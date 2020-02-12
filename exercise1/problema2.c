#define Voltage 5
#include <stdio.h>

extern float resistor_fun(float i){
    float b;
    b = Voltage/i;
    return b;
}

main(){
    float Resistor, current;
    printf("Enter the current value: ");
    scanf("%f", &current);

    Resistor = resistor_fun(current);
    printf("The required resistor should be ");
    printf("%1.0f Ohmns.\n", Resistor);
}
