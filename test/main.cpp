#include <iostream>
#include <blaze/Blaze.h>

int main(){
    blaze::StaticVector<int,10> a{1};
    std::cout << a[1];
    return 1;
}