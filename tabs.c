// takes in a file, replaces tabs with four spaces

/*
  TODO
  - use stdin instead of a file for input
  - error handling...

  PULL REQUESTS ARE WELCOME!
 */

#include <stdio.h>

int main() {
  File *fp;
  int c;
  fp = fopen("input.txt", "R");

  while ((c = fgetc(fp)) != EOF) {
    if (c == '\t') {
      //4 spaces == 1 tab
      for(int i = 0; i < 4; i++){
        putchar(' ');
      }
    } else {
      putchar(c);
    }
  }

  fclose(fp);
  return 0;
}
