//
//  Half.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/19/24.
//

import SwiftUI

struct Half: View {
    var name: String = "Han"
    var age: Int = 20
    
    var names: [String] = ["한상선", "박철화", "케로", "1", "2", "1", "2", "1", "2", "1", "2", "1", "2", "1", "2", "1", "2", "1", "2", "1", "2", "1", "2", "1", "2"]
    var body: some View {
        //커맨드 + shift + L, 혹은 + 버튼을 누르면 UI를 그리는데 필요한 라이브러리가 나온다.
        VStack {
            HStack {
                Text("\(name) 입니다")
                Image(systemName: "pencil")
            }
            
            Text("안녕하세요! \(name)")
            
            List {
                ForEach(names, id: \.self){ name in
                    let welcome = sayHi(to: name)
                    if name == "박철화" {
                        Text("기다렸어요. \(welcome)")
                    }
                    Text(welcome)
                }
            }
        }

    }
    
    func sayHi(to name: String) -> String {
        return "\(name)님 반갑습니다";
    }
}

#Preview {
    Half()
}
