//
//  Nil.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/21/24.
//

import SwiftUI

struct Nil: View {
    //변수타입명 뒤에 ?를 붙임으로서 옵셔널임을 정의할 수 있음
    //필수가 아닌 값, 없을 수도 있을 수도 있다는 의미.
    
    var name1: String = "Leeo"
    var petName1: String?
    
    var name2: String = "Bami"
    var petName2: String = ""
    
    var body: some View {
        VStack{
            //옵셔널인 프로퍼티는 일반적인 방법으로 사용할 수 없음.
            //옵셔널바인딩, 체이닝을 사용해야 함.
//            Text("이름은 \(name1) 입니다. 펫 이름은 \(petName1) 입니다.")
            Text("이름은 \(name2) 입니다. 펫 이름은 \(petName2) 입니다.")
        }
        .onAppear {
            print("이름은 \(name1) 입니다. 펫 이름은 \(petName1) 입니다.")
            print("이름은 \(name2) 입니다. 펫 이름은 \(petName2) 입니다.")
        }
    }
}


#Preview {
    Nil()
}
