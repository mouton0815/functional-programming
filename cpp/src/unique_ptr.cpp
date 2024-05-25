#include <memory>
using namespace std;

int main() {
    unique_ptr<double> p(new double(3.14));
    unique_ptr<double> q(move(p));
    *q = 2.71; // Ok
    *p = 2.71; // RUNTIME error: segmentation fault
}