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

int main(){
	int i, size=0, e=0;

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
	
	size = iw*ih;
	pixel **P;
        P = (pixel**) malloc(size*sizeof(pixel*));
	for(i=0; i<size; i++){
		P[i] = (pixel*) malloc(sizeof(pixel));
		P[i] -> number = i;
		P[i] -> num_y = i/iw;
		P[i] -> num_x = i % iw;
	}
	
	Tree **Forest;
	Forest = (Tree**) malloc(size*sizeof(Tree*));	
	for(i=0; i<size; i++)
		Forest[i] = Create_TreeNode(P[i]);

	Edge *E;
	E = (Edge*) malloc(1*sizeof(Edge));
	int n1, n2;
	for(i=0; i<size; i++){
		n1 = P[i] -> num_y;
		n2 = P[i] -> num_x;
		if((n1-1 > 0) && (abs(idata[n*(iw*(n1-1) + n2)] - idata[n*i]) < 10) && (abs(idata[n*(iw*(n1-1) + n2)+1] - idata[n*i+1]) < 10) && (abs(idata[n*(iw*(n1-1) + n2)+2] - idata[n*i+2]) < 10)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y-1) + P[i]->num_x;
		        e++;	
			E = realloc(E,(e+1)*sizeof(Edge));
		}

		if((n1+1 < ih) && (abs(idata[n*(iw*(n1+1) + n2)] - idata[n*i]) < 10) && (abs(idata[n*(iw*(n1+1) + n2)+1] - idata[n*i+1]) < 10) && (abs(idata[n*(iw*(n1+1) + n2)+2] - idata[n*i+2]) < 10)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y+1) + P[i]->num_x;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}

		if((n2-1 > 0) && (abs(idata[n*(iw*n1 + n2 - 1)] - idata[n*i]) < 10)  && (abs(idata[n*(iw*n1 + n2 - 1)+1] - idata[n*i+1]) < 10)  && (abs(idata[n*(iw*n1 + n2 - 1)+2] - idata[n*i+2]) < 10)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x-1;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}

		if((n2+1 < iw) && (abs(idata[n*(iw*n1 + n2 + 1)] - idata[n*i]) < 10)  && (abs(idata[n*(iw*n1 + n2 + 1)+1] - idata[n*i+1]) < 10)  && (abs(idata[n*(iw*n1 + n2 + 1)+2] - idata[n*i+2]) < 10)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x+1;
		        e++;	
			E = realloc(E, (e+1)*sizeof(Edge));
		}
	}
			
	for(i=0; i<e; i++)
		if(Find_Set(Forest[E[i].v1]) != Find_Set(Forest[E[i].v2]))
			Union(Forest[E[i].v1], Forest[E[i].v2]);
		
	Tree *T;
	int j, tmp = 0, idata_num;
	unsigned char color;
	for(i=0; i<size; i++){
		if(Forest[i] -> change_color==false){
			T = Forest[i] -> par;
			color =  (10+tmp)%250;
			tmp+=(i+1);
			for(j=0;j<size;j++)
				if(Forest[j] -> par == T){
					idata_num = j*n;
					idata[idata_num] = color;
					idata[idata_num+1] = color/2;
					idata[idata_num+2] = color%100;
					Forest[j] -> change_color = true;
				}
		}
	}

	unsigned char *odata = (unsigned char*) malloc((iw*ih*n)*sizeof(unsigned char));
	odata = idata;
	

	//Путь к выходной картинке 
	char *outputPath = "output_idata.png";

	//Записываем картинку 
	stbi_write_png(outputPath, iw, ih, n, odata, 0);

	stbi_image_free(idata);
		
 return 0;
}
