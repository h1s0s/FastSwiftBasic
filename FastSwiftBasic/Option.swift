//
//  Option.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/22/24.
//

import SwiftUI

struct Option: View {
    var leeo: People? = People(name: "Leeo", mbti: MBTI(name: "ENFP"))
    var bami: People = People(name: "bami", petName: "coco", mbti: MBTI(name: "ENFP"))
    var berry: People = People(name: "berry", petName: "cookie", mbti: MBTI(name: "ENFP"))
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            //옵셔널체이닝이라는 문법이 없다면? 이런식으로.. 옵셔널 안에 옵셔널을 바이닝 해줘야 함.
//            if let leeo = leeo {
//                if let petName = leeo.petName {
//                    Text("이름은 \(leeo.name), 애완동물 이름은 \(petName)")
//                } else {
//                    Text("이름은 \(leeo.name), 애완동물 이름은 없어요")
//                }
//            }
            
            if let leeoMbtiName = leeo?.mbti?.name {
                Text("\(leeoMbtiName)")
            } else {
                Text("no Mbti Name")
            }
            if let petName = bami.petName {
                Text("이름은 \(bami.name), 애완동물 이름은 \(petName)")
            }
            if let petName = berry.petName {
                
                Text("이름은 \(berry.name), 애완동물 이름은 \(petName)")
            }
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
    
    //구조체, 클래스의 프로퍼티의 값을 지정하지 않으면 필수, 값을 넣어주면 넣지 않아도 됨
}

struct MBTI {
    let name: String
    
}
#Preview {
    Option()
}
