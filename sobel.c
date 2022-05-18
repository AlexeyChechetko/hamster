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
	unsigned char *idata = stbi_load(inputPath, &iw, &ih, &n, 0);
	if (idata == NULL){
		printf("Error: can't read file %s\n", inputPath);
		return -1;
	}

	//Переходим к одноканальному изображению
	unsigned char *idata_new;
	idata_new = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	for(i=0; i<iw*ih*n-4; i+=4){	
		idata_new[size] = (idata[i]*11 + idata[i+1]*16 + idata[i+2]*5)/32;
		size++;
	}

	//Применяем фильтр Гаусса
	unsigned char *odata = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	
	for(i=2; i<=ih-2; i++)
		for(j=2; j<iw-2; j++)
			odata[iw*i+j] = (0.0924)*idata_new[iw*(i-1)+(j-1)]+(0.1192)*idata_new[iw*i+(j-1)]+(0.0924)*idata_new[iw*(i+1)+(j-1)]+(0.0924)*idata_new[iw*(i-1)+(j+1)]+(0.1192)*idata_new[iw*i+(j+1)]+(0.0924)*idata_new[iw*(i+1)+(j+1)]+(0.1192)*idata_new[iw*(i-1)+j]+(0.1192)*idata_new[iw*(i+1)+j]+(0.1538)*idata_new[iw*i+j];


	/*//Применяем фильтр Собеля
	unsigned char *odata = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	unsigned char gx, gy;
	
	/*for(i=2; i<=ih-2; i++)
		for(j=2; j<iw-2; j++){
			gy = 3*idata_new2[iw*(i-1)+(j-1)]+10*idata_new2[iw*i+(j-1)]+3*idata_new2[iw*(i+1)+(j-1)]-3*idata_new2[iw*(i-1)+(j+1)]-10*idata_new2[iw*i+(j+1)]-3*idata_new2[iw*(i+1)+(j+1)];
			gx = 3*idata_new2[iw*(i-1)+(j-1)]+10*idata_new2[iw*(i-1)+j]+3*idata_new2[iw*(i-1)+(j+1)]-3*idata_new2[iw*(i+1)+(j-1)]-10*idata_new2[iw*(i+1)+j]-3*idata_new2[iw*(i+1)+(j+1)];
			odata[iw*i+j] = sqrt(gx*gx + gy*gy);
		}
	

	for(i=2; i<=ih-2; i++)
		for(j=2; j<iw-2; j++)
			odata[iw*i+j] = 3*idata_new2[iw*(i-1)+(j-1)]+10*idata_new2[iw*i+(j-1)]+3*idata_new2[iw*(i+1)+(j-1)]-3*idata_new2[iw*(i-1)+(j+1)]-10*idata_new2[iw*i+(j+1)]-3*idata_new2[iw*(i+1)+(j+1)];
		*/

	
	//Путь к выходной картинке 
	char *outputPath = "gaus1.png";
	
	//Записываем картинку 
	stbi_write_png(outputPath, iw, ih, 1, odata, 0);
	stbi_image_free(idata);
	stbi_image_free(idata_new);
 
 return 0;
}
