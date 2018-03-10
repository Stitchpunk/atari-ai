// takes in a file, replaces tabs with four spaces

/*
  TODO
  - error handling...

  PULL REQUESTS ARE WELCOME!
 */

#include <stdio.h>

int main(int argc, char *argv[]) {
  File *in = stdin;
  int c;
  
  if(argc == 2) {
      fp = fopen("input.txt", "R");
    
      if(fp != NULL)
          in = fp;
  }

  while ((c = fgetc(fp)) != EOF) {
    if (c == '\t') {
      puts("    ");
    } else {
      putchar(c);
    }
  }

  fclose(in);
  return 0;
}
