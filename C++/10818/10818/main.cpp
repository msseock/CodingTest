//
//  main.cpp
//  10818
//
//  Created by 석민솔 on 2021/11/10.
//

#include <iostream>
using namespace std;

int main(int argc, const char * argv[]) {
    int N, min, max, cnt;
    cin >> N;
    
    // 배열 생성
    int* arr = new int[N];
    for (cnt = 0; cnt < N; cnt++) {
        cin >> arr[cnt];
    }
    
    // 최대최소값 찾기
    min = arr[0];
    max = min;
    for (cnt = 1; cnt < N; cnt++) {
        if (min > arr[cnt]) {
            min = arr[cnt];
        }
        if (max < arr[cnt]) {
            max = arr[cnt];
        }
    }
    
    // 출력
    cout << min << " " << max << endl;
    return 0;
}
