#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "stb_image.h"
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
	T-node -> change_color = false;

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
	char *inputPath = "~/work/hampster.png";
	// iw - ширина, ih - высота, n - кол-о цветов, число каналов по цвету (сколько байт используется для одного пикселя)
	int ih, iw, n;
	
	//Загружаем изображение, чтобы получить информацию о ширине, высоте и цветовом канале
	unsigned char *idata = stbi_load(inputPath, &iw, &ih, &n, 0);
	if (idata == NULL){
		printf("Error: can't read file %s\n", inputPath);
		return -1;
	}
	
	unsigned char *idata_nex;
	idata_new = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	for(i=0; i<iw*ih*n; i+=3){	
		idata_new[size] = (idata[i]*11 + idata[i+1]*16 + idata[i+2]*5)/32;
		size++;
	}

	pixel **P;
        P = (pixel**) malloc(size*sizeof(pixel*));
	for(i=0; i<size; i++){
		P[size] = (pixel*) malloc(sizeof(pixel));
		P[size] -> number = i;
		P[size] -> num_y = i/iw;
		P[size] -> num_x = i % iw;
	}
	
	Tree **Forest;
	Forest = (Tree**) malloc(size*sizeof(Tree*));	
	for(i=0; i<size; i++)
		Forest[i] = Create_TreeNode(P[i]);

	Edge *E;
	E = (Edge*) malloc(1*sizeof(Edge));
	for(i=0; i<size; i++){
		if((P[i] -> num_y-1 > 0) && (abs(idata_new[iw*(P[i]->num_y-1) + P[i]->num_x] - idata_new[i]) < 50)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y-1) + P[i]->num_x;
		        e++;	
			E = realloc(E, e+1);
		}

		if((P[i] -> num_y+1 < ih) && (abs(idata_new[iw*(P[i]->num_y+1) + P[i]->num_x] - idata_new[i]) < 50)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y+1) + P[i]->num_x;
		        e++;	
			E = realloc(E, e+1);
		}

		if((P[i] -> num_x-1 > 0) && (abs(idata_new[iw*(P[i]->num_y) + P[i]->num_x-1] - idata_new[i]) < 50)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x-1;
		        e++;	
			E = realloc(E, e+1);
		}

		if((P[i] -> num_x+1 < iw) && (abs(idata_new[iw*(P[i]->num_y) + P[i]->num_x+1] - idata_new[i]) < 50)){
			E[e].v1 = i;
			E[e].v2 = iw*(P[i]->num_y) + P[i]->num_x+1;
		        e++;	
			E = realloc(E, e+1);
		}
	}

	for(i=0; i<e; i++)
		if(Find_Set(Forest[E[i].v1]) != Find_Set(Forest[E[i].v2]))
			Union(Forest[E[i].v1], Forest[E[i].v2]);
	
	Tree *T;
	int j;
	unsigned char color;
	for(i=0; i<size; i++){
		if(Forest[i] -> change_color==false){
			T = Forest[i] -> par;
			color =  i%250;
			for(j=0;j<size;j++)
				if(Forest[j] -> par == T){
					idata_new[j] = color;
					Forest[j] -> change_color = true;
				}
		}
	}

	unsigned char *odata = (unsigned char*) malloc((iw*ih)*sizeof(unsigned char));
	odata = idata_new;
	

	//Путь к выходной картинке 
	char *outputPath = "~/work/output.png";

	//Записываем картинку 
	stbi_write_png(outputPath, ow, oh, 1, odata, 0);

	stbi_image_free(idata);
	stbi_image_free(idata_new);
	stbi_image_free(odata);

 return 0;
}
