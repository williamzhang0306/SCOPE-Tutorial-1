#include <iostream>
#include <unistd.h>   
#include "LED_Driver.hpp"

int main(){
    //initialize driver
    LED_Driver ledDriver;

    //blink test
    for (int i = 1; i <=10; i++){
        ledDriver.turn_LED_on();
        sleep(1);
        ledDriver.turn_LED_off();
        sleep(1);
    }
    return 0;
}