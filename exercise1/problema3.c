#include <stdio.h>

int main(){
    float resistor, current;
    printf("Enter the current value: ");
    scanf("%f", &current);

    resistor = resistor_fun(current);
    printf("The required resistor should be ");
    printf("%1.0f Ohmns.\n", resistor);
}
