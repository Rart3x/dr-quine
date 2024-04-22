#include <stdio.h>
#include <stdlib.h>

char    *loadFile(const char *filename) {
    char *buffer = NULL;
    long length;
    
    FILE *file = fopen(filename, "rb");

    if (file) {
        fseek(file, 0, SEEK_END);
        length = ftell(file);
        fseek(file, 0, SEEK_SET);
        buffer = malloc(length + 1);
        if (buffer) {
            fread(buffer, 1, length, file);
            buffer[length] = '\0';
        }
        fclose(file);
    }
    return buffer;
}

int main() {
    //---------------------------------First Comment---------------------------------//
    char *content = loadFile("Colleen.c");

    if (content) {
        printf("%s\n", content);
        free(content);
    }
    return 0;
}

//---------------------------------Second Comment---------------------------------//