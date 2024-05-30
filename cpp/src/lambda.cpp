#include <iostream>
#include <list>
using namespace std;

int main() {
    list<int> l = { 1, 3, 5 };
    for_each(l.begin(), l.end(), [](int i) { cout << i << endl; });
}