#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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

unsigned char* Sobel(unsigned char *idata, int ih, int iw){
	int i, j;
	unsigned char *idata_change = (unsigned char*) calloc((iw*ih+1), sizeof(unsigned char));
	unsigned char gx, gy;
	
	for(i=2; i<ih-2; i++)
		for(j=2; j<iw-2; j++){
			gx = -1*idata[iw*(i-1)+(j-1)]-2*idata[iw*i+(j-1)]-1*idata[iw*(i+1)+(j-1)]+1*idata[iw*(i-1)+(j+1)]+2*idata[iw*i+(j+1)]+1*idata[iw*(i+1)+(j+1)];
			gy = -1*idata[iw*(i-1)+(j-1)]-2*idata[iw*(i-1)+j]-1*idata[iw*(i-1)+(j+1)]+1*idata[iw*(i+1)+(j-1)]+2*idata[iw*(i+1)+j]+1*idata[iw*(i+1)+(j+1)];
			idata_change[iw*i+j] = sqrt(gx*gx + gy*gy);
		}
	
	return idata_change;
}

unsigned char* smoothing(unsigned char *idata, int ih, int iw){
	int i, j;
	unsigned char *idata_change = (unsigned char*) calloc((iw*ih+1), sizeof(unsigned char));

	for(i=2; i<=ih-2; i++)
		for(j=2; j<iw-2; j++)
			idata_change[iw*i+j] = (1/9)*idata[iw*(i-1)*(j-1)]+(1/9)*idata[iw*i+(j-1)]+(1/9)*idata[iw*(i+1)+(j-1)]+(1/9)*idata[iw*(i-1)+(j+1)]+(1/9)*idata[iw*i+(j+1)]+(1/9)*idata[iw*(i+1)+(j+1)];
		

	return idata_change;
}


int main(){
	int i, j, size=0, e=0;

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

	printf("%d %d %d\n", iw, ih, n);

	//Переходим к одноканальному изображению
	unsigned char *idata_new;
	idata_new = (unsigned char*) malloc((iw*ih+1)*sizeof(unsigned char));
	for(i=0; i<iw*ih*n-4; i+=4){	
		idata_new[size] = (idata[i]*11 + idata[i+1]*16 + idata[i+2]*5)/32;
		size++;
	}
		
	//Применяем фильтры
	unsigned char *idata_new_change1;
	idata_new_change1 = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
		
	idata_new_change1 = Sobel(idata_new, ih, iw);
	
	unsigned char *idata_new_change2;
	idata_new_change2 = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));

	idata_new_change2 = smoothing(idata_new_change1, ih, iw);
	

	/*//Создаем пиксели
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
		if((P[i] -> num_y-1 > 0) && (abs(idata_new_change2[iw*(P[i]->num_y-1) + P[i]->num_x] - idata_new_change2[i]) < 5)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y-1) + P[i]->num_x;
		        e++;	
			E = realloc(E,(e+1)*sizeof(Edge));
		}

		if((P[i] -> num_y+1 < ih) && (abs(idata_new_change2[iw*(P[i]->num_y+1) + P[i]->num_x] - idata_new_change2[i]) < 5)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y+1) + P[i]->num_x;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}

		if((P[i] -> num_x-1 > 0) && (abs(idata_new_change2[iw*(P[i]->num_y) + P[i]->num_x-1] - idata_new_change2[i]) < 5)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x-1;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}

		if((P[i] -> num_x+1 < iw) && (abs(idata_new_change2[iw*(P[i]->num_y) + P[i]->num_x+1] - idata_new_change2[i]) < 5)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x+1;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}
	}
	printf("e = %d, E[2 662 040].v1 = %d, v2 = %d\n", e, E[2662040].v1, E[2662040].v2);

	//Разбиваем на компоненты 	
	for(i=0; i<e-5000; i++)
		if(Find_Set(Forest[E[i].v1]) != Find_Set(Forest[E[i].v2])){
			Union(Forest[E[i].v1], Forest[E[i].v2]);
		}
	
	//Меняем цвет	
	Tree *T;
	unsigned char color;
	for(i=0; i<size; i++){
		if(Forest[i] -> change_color==false){
			T = Forest[i] -> par;
			color =  (20+idata_new_change2[T->pix->number])%250;
			for(j=0;j<size;j++)
				if(Forest[j] -> par == T){
					idata_new_change2[j] = color;
					Forest[j] -> change_color = true;
				}
		}
	}*/


	//Путь к выходной картинке 
	char *outputPath = "output2.png";
	
	unsigned char *odata = (unsigned char*) malloc((iw*ih+1)*sizeof(unsigned char));
	odata = idata_new_change2;

	//Записываем картинку 
	stbi_write_png(outputPath, iw, ih, 1, odata, 0);
	stbi_image_free(idata);
	stbi_image_free(idata_new);
	//stbi_image_free(idata_new_change1);
	//stbi_image_free(idata_new_change2);
		
 return 0;
}
