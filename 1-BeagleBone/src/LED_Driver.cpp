#include <iostream>
#include <fstream>
#include "LED_Driver.hpp"

LED_Driver::LED_Driver() {
    // Add constructor implementation if needed
}

LED_Driver::~LED_Driver() {
    // Add destructor implementation if needed
}

void LED_Driver::turn_LED_on() {
    setSysfsGPIOValue("/sys/class/gpio/gpio30/value", "1");
    std::cout << "LED Turned ON" << std::endl;
}

void LED_Driver::turn_LED_off() {
    setSysfsGPIOValue("/sys/class/gpio/gpio30/value", "0");
    std::cout << "LED Turned OFF" << std::endl;
}

void LED_Driver::setSysfsGPIOValue(const std::string& gpioPath, const std::string& value) {
    std::ofstream gpioFile(gpioPath.c_str());
    if (gpioFile.is_open()) {
        gpioFile << value;
        gpioFile.close();
    } else {
        std::cerr << "Unable to open GPIO file: " << gpioPath << std::endl;
    }
}