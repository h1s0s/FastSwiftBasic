//
//  Condition.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/17/24.
//

import SwiftUI

struct Condition: View {
    var count: Int = 4
    var hasLoggedIn: Bool = false
    
    var body: some View {
        VStack{
            if count > 4 {
                Text("숫자는 4보다 큽니다.")
            } else {
                Text("숫자는 4와 같거나 작습니다.")
            }
            if hasLoggedIn {
                Text("로그아웃 하시겠습니까?")
            } else {
                Text("로그인 하시겠습니까?")
            }
        }
        
        //Guard문
//        guard hasLoggedIn else {
//            Text("로그인 하시겠습니까?")
//        }
    }
}

#Preview {
    Condition()
}
