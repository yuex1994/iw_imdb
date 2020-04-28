#include <stdlib.h>
#include <stdio.h>

#define TRUE 1
#define FALSE 0

int main(int argc, char** argv) {

    int rtl_var;
    int ila_var; 
    int var_counter;
    int var_match;
    int i;

    var_match = TRUE;

// Verify if corresponding variables from both simulations are equal

    FILE *fp1 = fopen("rtl_vars.txt", "r");
    FILE *fp2 = fopen("ila_vars.txt", "r");

    while (!(feof(fp1) & feof(fp2))) {
        rtl_var = fscanf(fp1, "%d", &i);
        ila_var = fscanf(fp2, "%d", &i);
  
        var_match = var_match && (rtl_var == ila_var);
    }
    if (var_match) printf("All fields from the RTL & ILA simulations MATCH\n");
        else printf("Some or all fields from the RTL & ILA simulations DO NOT MATCH\n");
    
    fclose(fp1);
    fclose(fp2);

// Now print the values out to the terminal

    FILE *fprint1 = fopen("rtl_vars.txt", "r");
    FILE *fprint2 = fopen("ila_vars.txt", "r");

    printf("REGISTER VALUES\n");
    for (i = 0;  i < 32; i++) {
        rtl_var = fscanf(fprint1, "%d", &i);
        ila_var = fscanf(fprint2, "%d", &i);

        printf("RTL reg%d -> %d and ILA reg%d -> %d\n", i, rtl_var, i, ila_var);
    }

    fclose(fprint1);
    fclose(fprint2);
    
    return 0;
}