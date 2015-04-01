#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAIN_MENU printf("\033[2J"); display_info(); printf("\n\n> (c)reate file\n> set array (s)ize\n> set max number (r)ange\n> change (f)ile name\n> e(x)it\n");
#define DEFAULT_NAME "array10"
#define DEFAULT_SIZE 10
#define DEFAULT_RANGE 100

char *name;
int size;
int range;

void display_info(void) {
 printf("\n\nUsing filename: %s\n", name);
 printf("Array Size: %d \n", size);
 printf("Number Range: %d to %d \n", 0, range);
}

int accept_string(char **str) {
 char in;
 int index = 0;
 
 *str = (char *)malloc(sizeof(char));
 (*str)[index] = '\0';
 
 in = getchar();
 while(in == '\n') 
  in = getchar();

 while(in != '\n') {
  *str = (char *)realloc(*str, (index+2)*sizeof(char));
  (*str)[index++] = in;
  (*str)[index] = '\0';
  in = getchar();
 }
 
 return index;
}

int add_extention(char **str, const char *ext) {
 int length = strlen(ext)+strlen(*str)+1;
 
 *str = realloc(*str, length*sizeof(char));
 strcat(*str, ext);
 strcat(*str, "\0");
 
 return length;
}

void create_files() {
 int i;
 int a1,a2;
 char *ifile, *rfile;
 FILE *ifp,*rfp;
 
 ifile = (char *)malloc(strlen(name)*sizeof(char));
 rfile = (char *)malloc(strlen(name)*sizeof(char));
 
 strcpy(ifile, name);
 strcpy(rfile, name);
 
 add_extention(&ifile, ".in");
 add_extention(&rfile, "_result.in");
 
 ifp = fopen(ifile, "w+");
 rfp = fopen(rfile, "w+");
 
 srand(time(NULL));
 
 for(i=0 ; i<size ; i++) {
	a1 = rand()%(range+1);
	a2 = rand()%(range+1);
	fprintf(ifp, "%d %d\n", a1, a2);
	fprintf(rfp, "%d\n", (a1+a2));
 }
 
 fclose(ifp);
 fclose(rfp);
 
 printf("Done!\n\n\ne(x)it");
 while(getchar()!='x');
 
 return;
}

void main () {
 char in;
 
 name = DEFAULT_NAME;
 size = DEFAULT_SIZE;
 range = DEFAULT_RANGE;
 
 MAIN_MENU;

 while(1) {
  usleep(100000);
  in = getchar();
  switch(in) {
   case 'c': printf("\033[2J");
	         create_files();
	         MAIN_MENU;
			 break;
   case 's': printf("\n\n\nEnter array size ...\n");
             scanf("%d", &size);
             MAIN_MENU;
             break;
   case 'r': printf("\n\n\nEnter maximum number ...\n");
             scanf("%d", &range);
             MAIN_MENU;
             break;
   case 'f': printf("\n\n\nEnter filename...\n");
             name = malloc(sizeof(char));
             name[0] = '\0';
             accept_string(&name);
   			 MAIN_MENU;
             break;
   case 'x': return;
   default : break;
  } 
 }
}