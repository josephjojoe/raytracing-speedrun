#include "color.h"
#include "vec3.h"
#include <iostream>

int main() {

    int width = 256;
    int height = 256;
    std::cout << "P3\n" << width << ' ' << height << "\n255\n";

    for (int j = 0; j < width; j++) {
        std::clog << "\rScanlines remaining: " << (height - j) << " " << std::flush;
        for (int i = 0; i < height; i++) {
            auto pixel_color = color(double(i)/(width-1), double(j)/(height-1), 0);
            write_color(std::cout, pixel_color);
        }
    }
    std::clog << "\rDone.                YAY\n";
}