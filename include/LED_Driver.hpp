#ifndef LED_DRIVER_HPP
#define LED_DRIVER_HPP

#include <fstream>
#include <string>

class LED_Driver {
public:
    LED_Driver();
    ~LED_Driver();

    void initialize_LED();
    void turn_LED_on();
    void turn_LED_off();

private:
    void setSysfsGPIOValue(const std::string& gpioPath, const std::string& value);
    void setLibgpiodGPIOValue(const std::string& gpioName, bool value);

    // Add any other members or functions as needed
};

#endif // LED_DRIVER_HPP