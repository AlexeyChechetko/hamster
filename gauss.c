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

	//Повышаем контрастностью Все, светлее 160, делаем белым. Все, что темнее 95, делаем черным
	for(i=0; i<size; i++){
		if(idata[i]>170)
			idata[i] = 255;
		else if(idata[i]<70)
			idata[i] = 0;
	}	

	unsigned char *odata;
	odata = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	//Гауссово размытие. Можно повторить его несколько раз, добавив внешний цикл. Тогда сглаживание будет сильнее (и тона станут темнее)
    	for (i=2;i<=ih-2;i++){
        	for (j=2;j<iw-2;j++){
            	odata[iw*i+j]=0.0924*idata[iw*(i-1)+(j-1)]+0.01192*idata[iw*(i-1)+(j)]+0.0924*idata[iw*(i-1)+(j+1)]+0.1192*idata[iw*(i)+(j-1)]+0.1538*idata[iw*(i)+(j)]+0.1192*idata[iw*(i)+(j+1)]+0.0924*idata[iw*(i+1)+(j-1)]+0.1192*idata[iw*(i+1)+(j)]+0.0924*idata[iw*(i+1)+(j+1)];
        	}
    	}

	unsigned char *odata2;
	odata2 = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	//Гауссово размытие. Можно повторить его несколько раз, добавив внешний цикл. Тогда сглаживание будет сильнее (и тона станут темнее)
    	for (i=2;i<=ih-2;i++){
        	for (j=2;j<iw-2;j++){
            	odata2[iw*i+j]=0.0924*odata[iw*(i-1)+(j-1)]+0.01192*odata[iw*(i-1)+(j)]+0.0924*odata[iw*(i-1)+(j+1)]+0.1192*odata[iw*(i)+(j-1)]+0.1538*odata[iw*(i)+(j)]+0.1192*odata[iw*(i)+(j+1)]+0.0924*odata[iw*(i+1)+(j-1)]+0.1192*odata[iw*(i+1)+(j)]+0.0924*odata[iw*(i+1)+(j+1)];
        	}
	}

	
	//Повышаем контрастностью Все, светлее 160, делаем белым. Все, что темнее 95, делаем черным
	for(i=0; i<size; i++){
		if(odata2[i]>100)
			odata2[i] = 255;
		else if(odata2[i]<70)
			odata2[i] = 0;
	}	

	/*/Размытие по Гауссу

	for(i=2; i<ih-2; i++)
		for(j=2; j<iw-2; j++)
			odata[iw*i+j] = (0.000789)*(idata[iw*(i-2)+(j-2)] + idata[iw*(i+2)+(j-2)] + idata[iw*(i+2)+(j+2)] + idata[iw*(i-2)+(j+2)]) + (0.006581)*(idata[iw*(i-2)+(j-1)] + idata[iw*(i-2)+(j+1)] + idata[iw*(i+2)+(j-1)] + idata[iw*(i+2)+(j+1)] + idata[iw*(i-1)+(j-2)] + idata[iw*(i-1)+(j+2)] + idata[iw*(i+1)+(j-2)] + idata[iw*(i+1)+(j+2)]) + (0.013347)*(idata[iw*(i-2)+j] + idata[iw*(i+2)+j] + idata[iw*i+(j-2)] + idata[iw*i+(j+2)]) + (0.054901)*(idata[iw*(i-1)+(j-1)] + idata[iw*(i-1)+(j+1)] + idata[iw*(i+1)+(j-1)] + idata[iw*(i+1)+(j+1)]) + (0.111345)*(idata[iw*i+(j-1)] + idata[iw*i+(j+1)] + idata[iw*(i-1)+j] + idata[iw*(i+1)+j]) + (0.225821)*idata[iw*i+j]; 
	*/


	//Путь к выходной картинке 
	char *outputPath = "gaus2.png";
	
	//Записываем картинку 
	stbi_write_png(outputPath, iw, ih, 1, odata2, 0);
	stbi_image_free(idata);
	stbi_image_free(odata2);
	stbi_image_free(idata3);
	stbi_image_free(odata);
 
 return 0;
}
