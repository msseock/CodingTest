//
//  main.cpp
//  2439
//
//  Created by 석민솔 on 2021/09/27.
//

#include <iostream>
using namespace std;

int main() {
    int N;
    cin >> N;
    
    // line
    for (int i = 1; i <= N; i++) {
        // empty
        for (int j = N - i; j > 0; j--) {
            cout << " ";
        }
        // *
        for (int k = 1; k <= i; k++) {
            cout << "*";
        }
        cout << endl;
    }
    
    return 0;
}
