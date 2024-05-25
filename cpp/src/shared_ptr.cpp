#include <memory>
#include <iostream>
using namespace std;

void do_something(shared_ptr<double>& p) {
    shared_ptr<double> p2(p); // Reference count increases to 2
    cout << *p2 << " #" << p2.use_count() << endl; // 3.41 #2
} // p2 goes out of scope, so reference count decreases to 1

int main() {
    shared_ptr<double> p(new double(3.14));
    do_something(p);
    cout << *p << " #" << p.use_count() << endl; // 3.41 #1
}