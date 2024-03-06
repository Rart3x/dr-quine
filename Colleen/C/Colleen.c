#include <stdio.h>

static char* print() {
    return (
    "#include <stdio.h>\n\n" \
    "static char* print() {\n" \
    "    return (\"Hello, World!\");\n" \
    "}\n\n" \
    "int main(void) {\n" \
    "    //---------------------------------First Comment---------------------------------//\n" \
    "    printf(\"%s\\n\", print());\n" \
    "    return (0);\n" \
    "}\n\n" \
    "//---------------------------------Second Comment---------------------------------//"
    );
}

int main(void) {
    //---------------------------------First Comment---------------------------------//
    printf("%s\n", print());
    return (0);
}

//---------------------------------Second Comment---------------------------------//