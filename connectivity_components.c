#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "stb_image.h"
#include "stb_image_write.h"

typedef struct pixel_struct{
	int number;
	int num_i;
	int num_j;
	int position_idata;
} pixel;

typedef struct Tree_struct{
	struct Tree_struct *par;
	pixel *pix;
	int rank;
} Tree;

Tree* Create_TreeNode(pixel *pix){
	Tree *T_node = (Tree*) malloc(sizeof(Tree));
	if(T_node==NULL){
		printf("Error");	
		return NULL;
	}
	
	T_node -> pix = pix;
	T_node -> rank = 1;	

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
	int i, size=0, k;

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

	pixel **P;
        P = (pixel**) malloc((ih*iw)*sizeof(pixel*));
	for(i=0; i<ih*iw*n; i+=3){
		P[size] = (pixel*) malloc(sizeof(pixel));
		P[size] -> number = size;
		P[size] -> num_i = size/iw;
		P[size] -> num_j = size % iw;
		P[size] -> position_idata = i;
		size++;
	}
	
	Tree **Forest;
	Forest = (Tree**) malloc(size*sizeof(Tree*));	
	for(i=0; i<size; i++)
		Forest[i] = Create_TreeNode(P[i]);

	Edge *E;
	E = (Edge*) malloc(1*sizeof(Edge));
	for(k=0; k<size; k++){
		if(P[k] -> num_i-1 > 0) && /*проверка цвета*/{
			//добавить ребро между P[k] и P[iw*(P[k]->num_i-1) + P[k]->num_j]	
			//Аналогично сделать проверку для других

	
	

	unsigned char *odata = (unsigned char*) malloc((iw*ih*n)*sizeof(unsigned char));

	//Путь к выходной картинке 
	char *outputPath = "~/work/output.png";

	//Записываем картинку 
	stbi_write_png(outputPath, ow, oh, n, odata, 0);

	stbi_image_free(idata);
	stbi_image_free(odata);

 return 0;
}
