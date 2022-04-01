#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "stb_image.h"
#include "stb_image_write.h"

//#define p(i, j) idata[(i)*iw+(j)] //пиксель с координатами i, j

typedef struct pixel_struct{
	unsigned char color[3];
	int x;
	int y;
} pixel;

int pixel_number(int i, int j, int iw){
	int tmp;
	if(!((i*iw+j)%3))
		return (i)*iw+(j);
	else{
		tmp = i*iw+j;
		while(tmp%3)	
			tmp++;
		return tmp;
	}
}

bool similar(int delta, pixel p, int iw, int ih, pixel P[ih][iw]){
	int i, j, tmp = 0;

	for(i=-delta; i<=delta; i++)	       
		for(j=-delta; j<=delta; j++)
	 		if(((p.x+j)>0) && ((p.x+j)<iw) && ((p.y+i)>0) && ((p.y+i)<ih))
				if((abc(p.color[0]- P[p.x+i][p.y+j].color[0]) < 20) && (abc(p.color[1]- P[p.x+i][p.y+j].color[1]) < 20) && (abc(p.color[2]- P[p.x+i][p.y+j].color[2]) < 20))
					tmp++;
	if(tmp<=2*delta*delta)
		return true;
	else
		return false;
}

int main(){
	int i, j, number;

	//Путь к файлу	
	char *inputPath = "~/work/hampster.png";
	// iw - ширина, ih - высота, n - кол-о цветов, число каналов по цвету (сколько байт используется для одного пикселя)
	int ih, iw, n;
	
	//Загружаем изображение, чтобы получить информацию о ширине, высоте и цветовом канале
	unsigned char *idata = stbi_load(inputPath, &iw, &ih, &n, 0);
	if (idata == NULL){
		printf("Error: can't read file %s\n", inputPath);
		return -1;
	}

       	//Массив пикселей 
	pixel P[ih][iw];
       
	//Заполняем массив
	for(i=0; i<ih; i++)
		for(j=0; j<iw; j++){
			number = pixel_number(i, j, iw);
			P[i][j].color[0] = idata[number];
			P[i][j].color[1] = idata[number+1];
			P[i][j].color[2] = idata[number+2];
			P[i][j].x = j;
			P[i][j].y = i;
		}
	
	unsigned char *odata = (unsigned char*) malloc((iw*ih*n)*sizeof(unsigned char));

	//Путь к выходной картинке 
	char *outputPath = "~/work/output.png";

	//Записываем картинку 
	stbi_write_png(outputPath, ow, oh, n, odata, 0);

	stbi_image_free(idata);
	stbi_image_free(odata);

 return 0;
}
