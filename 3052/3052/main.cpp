//
//  main.cpp
//  3052
//
//  Created by 석민솔 on 2021/11/24.
//

#include <iostream>
using namespace std;

int main() {
    int num, cnt = 0;
    bool exist[42] = {false};
    
    for (int i = 0; i < 10; i++) {
        cin >> num;
        num %= 42;
        exist[num] = true;
    }
    
    for (int i = 0; i < 42; i++) {
        if (exist[i]) cnt++;
    }
    
    cout << cnt << endl;
    
    return 0;
}
