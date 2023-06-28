//
//  main.cpp
//  1110
//
//  Created by 석민솔 on 2021/10/06.
//

#include <iostream>
using namespace std;

int main() {
    // 첫째 줄에 주어지는 N 선언, 초기화
    int N;
    cin >> N;
    
    // 0보다 크거나 같고, 99보다 작거나 같은 정수일 때 연산 가능
    if (N >= 0 && N <= 99) {
        int cycle = 0;
        int temp = N, temp2 = N;

        do {
            temp2 = temp;
            // 주어진 수가 10보다 작다면 앞에 0을 붙여 두 자리 수로 만들고
            if (temp < 10) temp *= 10;
            // 각자리의 숫자를 더한다
            temp = (temp / 10) + (temp % 10);
            // 주어진 수의 가장 오른쪽 자리 수와 앞에서 구한 합의 가장 오른쪽 자리 수를 이어 붙여서 새로운 수를 만든다
            temp = ((temp2 % 10) * 10) + (temp % 10);
            cycle++;
        } while (temp != N);

        cout << cycle << endl;
    }
    else {
        cout << "wrong number" << endl;
    }
    
    return 0;
}
