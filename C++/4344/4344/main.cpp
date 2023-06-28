//
//  main.cpp
//  4344
//
//  Created by 석민솔 on 2021/11/29.
//

#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int C, N, sum = 0;
    double avg;
    int* arr;
    
    cin >> C;
    for (int i = 0; i < C; i++) {   // i_th case
        cin >> N;
        arr = new int[N];           // 학생수

        sum = 0;
        for (int j = 0; j < N; j++) {   // 점수 입력
            cin >> arr[j];
            sum += arr[j];
        }
        avg = (double)sum / N;      // 평균 구하기
        
        sum = 0;
        for (int k = 0; k < N; k++) {   // 평균보다 높은 학생수
            if (avg < arr[k]) sum++;
        }
        
        cout << endl << fixed << setprecision(3) << ((double)sum / N) * 100 << "%" << endl;
    }
    return 0;
}
