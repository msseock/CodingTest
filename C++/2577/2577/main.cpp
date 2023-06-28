//
//  main.cpp
//  2577
//
//  Created by 석민솔 on 2021/11/03.
//

#include <iostream>
using namespace std;

int main() {
    int A, B, C, D;
    cin >> A >> B >> C;
    
    // 배열 초기화
    int arr[10];
    for(int i = 0; i < 10; i++) {
        arr[i] = 0;
    }
    
    D = A * B * C;
    while (D != 0) {
        arr[D % 10]++;
        D /= 10;
    }
    
    for(int i = 0; i < 10; i++) {
        cout << arr[i] << endl;
    }
    
    return 0;
}
