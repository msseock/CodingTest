//
//  main.cpp
//  2562
//
//  Created by 석민솔 on 2021/10/14.
//

//#include <iostream>
//using namespace std;
//
//int main() {
//    // 입력받기
//    int arr[9];
//    cin >> arr[0] >> arr[1] >> arr[2] >> arr[3] >> arr[4] >> arr[5] >> arr[6] >> arr[7] >> arr[8];
//
//    // 초기설정
//    int max = arr[0];
//    int max_index = 0;
//
//    // 최대값 찾기
//    for (int i = 1; i < 9; i++) {
//        if (max < arr[i]) {
//            max = arr[i];
//            max_index = i;
//        }
//    }
//
//    // 출력
//    cout << max << endl << max_index+1 << endl;
//}

#include <iostream>
using namespace std;

int main()
{
    // 입력값 저장 배열, 최대값, 최대값 번호
    int arr[9], max = -1, maxId;

    for (int i = 0; i < 9; i++)
    {
        do
        {
            cin >> arr[i];
        // 1~100 사이의 자연수가 아니면 올바른 값을 입력할 때까지 다시 입력받기
        } while (arr[i] <= 0 || arr[i] >= 100);
        
        // 입력받은 값이 현재 max보다 크면
        if (max < arr[i])
        {
            // 최대값과 몇 번째 값인지 저장
            max = arr[i];
            maxId = i + 1;
        }
    }

    cout << max << endl << maxId << endl;

    return 0;
}
