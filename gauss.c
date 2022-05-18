#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"


int main(){
	int i, j,  size=0;

	//Путь к файлу	
	char *inputPath = "hampster.png";
	// iw - ширина, ih - высота, n - кол-о цветов, число каналов по цвету (сколько байт используется для одного пикселя)
	int ih, iw, n;
	
	//Загружаем изображение, чтобы получить информацию о ширине, высоте и цветовом канале
	unsigned char *idata3 = stbi_load(inputPath, &iw, &ih, &n, 0);
	if (idata3 == NULL){
		printf("Error: can't read file %s\n", inputPath);
		return -1;
	}

	//Переходим к одноканальному изображению
	unsigned char *idata;
	idata = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	for(i=0; i<iw*ih*n-4; i+=4){	
		idata[size] = (idata3[i]*11 + idata3[i+1]*16 + idata3[i+2]*5)/32;
		size++;
	}

	//Размытие по Гауссу
	unsigned char *odata_g = (unsigned char*) calloc((iw*ih), sizeof(unsigned char));

	for(i=2; i<ih-2; i++)
		for(j=2; j<iw-2; j++)
			odata_g[iw*i+j] = (0.000789)*(idata[iw*(i-2)+(j-2)] + idata[iw*(i+2)+(j-2)] + idata[iw*(i+2)+(j+2)] + idata[iw*(i-2)+(j+2)]) + (0.006581)*(idata[iw*(i-2)+(j-1)] + idata[iw*(i-2)+(j+1)] + idata[iw*(i+2)+(j-1)] + idata[iw*(i+2)+(j+1)] + idata[iw*(i-1)+(j-2)] + idata[iw*(i-1)+(j+2)] + idata[iw*(i+1)+(j-2)] + idata[iw*(i+1)+(j+2)]) + (0.013347)*(idata[iw*(i-2)+j] + idata[iw*(i+2)+j] + idata[iw*i+(j-2)] + idata[iw*i+(j+2)]) + (0.054901)*(idata[iw*(i-1)+(j-1)] + idata[iw*(i-1)+(j+1)] + idata[iw*(i+1)+(j-1)] + idata[iw*(i+1)+(j+1)]) + (0.111345)*(idata[iw*i+(j-1)] + idata[iw*i+(j+1)] + idata[iw*(i-1)+j] + idata[iw*(i+1)+j]) + (0.225821)*idata[iw*i+j]; 


	//Фильтр Собеля
	unsigned char *odata_s = (unsigned char*) calloc((iw*ih), sizeof(unsigned char));
	unsigned char gx, gy;

	for(i=1; i<ih-1; i++)
		for(j=1; j<iw-1; j++){
			gx = 3*odata_g[iw*(i-1)+(j+1)] + 3*odata_g[iw*i+(j+1)] + 2*odata_g[iw*(i+1)+(j+1)] - odata_g[iw*(i+1)+(j-1)] - 2*odata_g[iw*i+(j-1)] - 4*odata_g[iw*(i-1)+(j-1)];
		       	gy = 2*odata_g[iw*(i+1)+(j-1)] + 2*odata_g[iw*(i+1)+j] + odata_g[iw*(i+1)+(j+1)] - 3*odata_g[iw*(i-1)+(j-1)] - 2*odata_g[iw*(i-1)+j] - 5*odata_g[iw*(i-1)+(j+1)];
	       		odata_s[iw*i+j] = sqrt(gx*gx + gy*gy/2);	       
		}


	//Путь к выходной картинке 
	char *outputPath = "gaus.png";
	
	//Записываем картинку 
	stbi_write_png(outputPath, iw, ih, 1, odata_s, 0);
	stbi_image_free(idata3);
	stbi_image_free(idata);
	stbi_image_free(odata_g);
	stbi_image_free(odata_s);
 
 return 0;
}
