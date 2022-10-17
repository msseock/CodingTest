//
//  main.cpp
//  1546
//
//  Created by 석민솔 on 2021/11/17.
//

#include <iostream>
using namespace std;

int main() {
    int N, M = 0;
    double sum = 0;
    
    cin >> N;
    int* score = new int[N];
    
    // 입력 & M값 구하기
    for (int i = 0; i < N; i++) {
        cin >> score[i];
        if (M < score[i])
            M = score[i];
    }
    
    // 점수 조작해서 총합에 더하기
    for (int i = 0; i < N; i++) {
        sum += (double)score[i] / M * 100;
    }
    
    // 평균 출력
    cout << sum / N << endl;
    return 0;
}
