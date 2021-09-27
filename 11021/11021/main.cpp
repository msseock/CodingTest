//
//  main.cpp
//  11021
//
//  Created by 석민솔 on 2021/09/27.
//

#include <iostream>
using namespace std;

int main() {
    int T, A, B;
    cin >> T;
    
    for (int i = 0; i < T; i++) {
        cin >> A >> B;              // 두 값 입력받기
        
        if (A > 0 && B < 10) {      // 조건 확인
            cout << "Case #" << i + 1 << ": ";  // Case 번호 출력
            cout << A + B << endl;  // 더한 값 출력
        }
        else {
            cout << "잘못된 수 입력" << endl;
        }
    }
    
    return 0;
}
