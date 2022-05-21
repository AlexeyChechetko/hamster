#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"


typedef struct pixel_struct{
	int number;
	int num_x;
	int num_y;
} pixel;

typedef struct Tree_struct{
	struct Tree_struct *par;
	pixel *pix;
	int rank;
	bool change_color;
} Tree;

typedef struct Edge_struct{
	int v1;
	int v2;
} Edge;



Tree* Create_TreeNode(pixel *pix){
	Tree *T_node = (Tree*) malloc(sizeof(Tree));
	if(T_node==NULL){
		printf("Error");	
		return NULL;
	}
	
	T_node -> pix = pix;
	T_node -> rank = 1;	
	T_node -> change_color = false;
	T_node -> par = T_node;

 	return T_node;
}

Tree* Find_Set(Tree *tmp){
	if(tmp != tmp -> par)
		tmp -> par = Find_Set(tmp -> par);
	return tmp -> par;
}

void Link(Tree *x, Tree *y){
	if(x->rank > y->rank)
		y -> par = x;
	else{
		x -> par = y;
		if(x -> rank == y -> rank)
			y -> rank++;
	}

 	return;
}

void Union(Tree *x, Tree *y){
	Link(Find_Set(x), Find_Set(y));
	return;
}


int main(){
	int i, j, size=0, e=0;
	srand(time(NULL));

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


	//Повышаем контрастность
  	for(i=0; i<size; i++){
		if(idata[i]>170)
			idata[i] = 255;
		else if(idata[i]<80)
			idata[i] = 0;
	}


	//Гаусс * 2
	unsigned char *odata;
	odata = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
    	for (i=1;i<=ih-2;i++){
        	for (j=1;j<iw-2;j++){
            		odata[iw*i+j]=0.0924*idata[iw*(i-1)+(j-1)]+0.01192*idata[iw*(i-1)+(j)]+0.0924*idata[iw*(i-1)+(j+1)]+0.1192*idata[iw*(i)+(j-1)]+0.1538*idata[iw*(i)+(j)]+0.1192*idata[iw*(i)+(j+1)]+0.0924*idata[iw*(i+1)+(j-1)]+0.1192*idata[iw*(i+1)+(j)]+0.0924*idata[iw*(i+1)+(j+1)];
        	}
    	}


	unsigned char *odata2;
	odata2 = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
    	for (i=1;i<=ih-2;i++){
        	for (j=1;j<iw-2;j++){
            		odata2[iw*i+j]=0.0924*odata[iw*(i-1)+(j-1)]+0.01192*odata[iw*(i-1)+(j)]+0.0924*odata[iw*(i-1)+(j+1)]+0.1192*odata[iw*(i)+(j-1)]+0.1538*odata[iw*(i)+(j)]+0.1192*odata[iw*(i)+(j+1)]+0.0924*odata[iw*(i+1)+(j-1)]+0.1192*odata[iw*(i+1)+(j)]+0.0924*odata[iw*(i+1)+(j+1)];
        	}
    	}
	
	printf("%d %d %d\n", size, iw, ih);
	//Повышаем контрастность
  	for(i=0; i<size; i++){
		if(odata2[i]>120)
			odata2[i] = 255;
		else if(odata2[i]<75)
			odata2[i] = 0;
		else
			odata2[i] = 127;
	}


	pixel **P;
        P = (pixel**) malloc(size*sizeof(pixel*));
	for(i=0; i<size; i++){
		P[i] = (pixel*) malloc(sizeof(pixel));
		P[i] -> number = i;
		P[i] -> num_y = i/iw;
		P[i] -> num_x = i % iw;
	}
	

	//Создаем лес для разделения на компоненты 
	Tree **Forest;
	Forest = (Tree**) malloc(size*sizeof(Tree*));	
	for(i=0; i<size; i++)
		Forest[i] = Create_TreeNode(P[i]);


	//Добавляем ребра
	Edge *E;
	E = (Edge*) malloc(1*sizeof(Edge));
	for(i=0; i<size; i++){
		if((P[i] -> num_y-1 > 0) && (odata2[iw*(P[i]->num_y-1) + P[i]->num_x] - odata2[i] == 0)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y-1) + P[i]->num_x;
		        e++;	
			E = realloc(E,(e+1)*sizeof(Edge));
		}

		if((P[i] -> num_y+1 < ih) && (odata2[iw*(P[i]->num_y+1) + P[i]->num_x] - odata2[i] == 0)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y+1) + P[i]->num_x;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}

		if((P[i] -> num_x-1 > 0) && (odata2[iw*(P[i]->num_y) + P[i]->num_x-1] - odata2[i] == 0)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x-1;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}

		if((P[i] -> num_x+1 < iw) && (odata2[iw*(P[i]->num_y) + P[i]->num_x+1] - odata2[i] == 0)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x+1;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}
	}
	
	
	//Разбиваем на компоненты 	
	for(i=0; i<e-3000; i++)
		if(Find_Set(Forest[E[i].v1]) != Find_Set(Forest[E[i].v2])){
			Union(Forest[E[i].v1], Forest[E[i].v2]);
		}
	

	//Меняем цвет	
	Tree *T;
	unsigned char color;
	for(i=0; i<size; i++){
		if(Forest[i] -> change_color==false){
			T = Forest[i] -> par;
			color = odata2[T->pix->number]; 
			for(j=0;j<size;j++)
				if(Forest[j] -> par == T){
					idata3[j*4] = (color)%150;
					idata3[j*4+1] = (color+20)%250;
					idata3[j*4+2] = (color+5)%250;
					Forest[j] -> change_color = true;
				}
		}
	}


	//Путь к выходной картинке 
	char *outputPath = "output.png";
	

	//Записываем картинку 
	stbi_write_png(outputPath, iw, ih, n, idata3, 0);


	stbi_image_free(idata3);
	stbi_image_free(idata);
	stbi_image_free(odata);
	stbi_image_free(odata2);
		
 return 0;
}
