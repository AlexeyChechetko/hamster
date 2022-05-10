#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

int comp = 1;

typedef struct pixel_struct{
	int number;
	int num_x;
	int num_y;
	int color;
	int num_comp;
} pixel;

typedef struct AdjacencyLists{
    struct AdjacencyLists *next;
    int number;
} List;

List* Create_Node(int num){
    List *L_node = (List*) malloc(sizeof(List));
    if (L_node == NULL) {printf("Unable to create new tree node!\n"); return L_node;}

    L_node -> next = NULL;
    L_node -> number = num;

 return L_node;
}

void CreateList(int num1, int num2, List **Lists){

    List *New = Create_Node(num2);
    if(Lists[num1]==NULL) 
	Lists[num1]=New;
    else{
        List *x;
    	x=Lists[num1];
        while(x->next!=NULL) 
		x=x->next;
        x->next=New;
    }
            
 return;
}

void DFS_visit(List **Lists, pixel *P, int num, int comp){

    P[num].color=0;

    List *adjNode;
    adjNode = Lists[P[num].number];
        while(adjNode!=NULL){
            if (P[adjNode->number].color == 1){
		P[adjNode->number].num_comp = comp;
                DFS_visit(Lists, P, adjNode->number, comp);
	    }
            adjNode = adjNode->next;
        }
    P[num].color=-1;

 return;
}

void DFS(List **Lists, pixel *P, int size){
    int i;

    for(i=0;i<size;i++)
        P[i].color=1;
    
    for(i=0;i<size;i++)
        if(P[i].color==1){
		printf("YES\n");
	    P[i].num_comp = comp;
            comp++;	    
            DFS_visit(Lists, P, i, comp-1);
	}

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

	//Перехедим к одному каналу
	unsigned char *idata_new;
	idata_new = (unsigned char*) malloc((iw*ih+1)*sizeof(unsigned char));
	for(i=0; i<iw*ih*n-4; i+=4){	
		idata_new[size] = (idata[i]*11 + idata[i+1]*16 + idata[i+2]*5 + idata[i+3]*15)/32;
		size++;
	}
	
	//Создаем массив пикселей, заполняем номер и координаты x,y
	pixel *P;
        P = (pixel*) malloc(size*sizeof(pixel));
	for(i=0; i<size; i++){
		P[i].number = i;
		P[i].num_y = i/iw;
		P[i].num_x = i % iw;
	}


	for(i=0; i<10; i++)
		printf("%d  %d  %d\n", P[i].number, P[i].num_y, P[i].num_x);

	//Создаем списки смежности	
	List **Lists;
	Lists = (List**) malloc(size*sizeof(List*));
	for(i=0;i<size;i++)
		Lists[i] = NULL;
	printf("Pixel\n");

	//Заполняем списки смежности
	for(i=0; i<size; i++){
		if((P[i].num_y-1 > 0) && (abs(idata_new[iw*(P[i].num_y-1) + P[i].num_x] - idata_new[i]) < 5)){
			CreateList(i, iw*(P[i].num_y-1)+P[i].num_x, Lists);
			CreateList(iw*(P[i].num_y-1)+P[i].num_x, i, Lists);	
		}

		if((P[i].num_y+1 < ih) && (abs(idata_new[iw*(P[i].num_y+1) + P[i].num_x] - idata_new[i]) < 5)){
			CreateList(i, iw*(P[i].num_y+1)+P[i].num_x, Lists);
			CreateList(iw*(P[i].num_y+1)+P[i].num_x, i, Lists);	
		}

		if((P[i].num_x-1 > 0) && (abs(idata_new[iw*(P[i].num_y) + P[i].num_x-1] - idata_new[i]) < 5)){
			CreateList(i, iw*(P[i].num_y)+P[i].num_x-1, Lists);
			CreateList(iw*(P[i].num_y)+P[i].num_x-1, i, Lists);	
		}

		if((P[i].num_x+1 < iw) && (abs(idata_new[iw*(P[i].num_y) + P[i].num_x+1] - idata_new[i]) < 5)){
			CreateList(i, iw*(P[i].num_y)+P[i].num_x+1, Lists);
			CreateList(iw*(P[i].num_y)+P[i].num_x+1, i, Lists);	
		}
	}
	List *x;
	for(i=0;i<10;i++){
		x = Lists[i];
		printf("%d)\n", i);
		while(x!=NULL){
			printf("%d ", x->number);
			x = x -> next;
		}
		printf("\n");
	}

	DFS(Lists, P, size);

	printf("comp = %d\n", comp);

	/*unsigned char *odata = (unsigned char*) malloc((iw*ih+1)*sizeof(unsigned char));
	odata = idata_new;
	

	//Путь к выходной картинке 
	char *outputPath = "output3.png";

	//Записываем картинку 
	stbi_write_png(outputPath, iw, ih, 1, odata, 0);
	*/
	stbi_image_free(idata);
	stbi_image_free(idata_new);
		
 return 0;
}
