//
//  MyCollections.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/17/24.
//

import SwiftUI

struct MyCollections: View {
    
    let name: String = "leeo" //값을 바꿀 수 없음
    var name2: String = "leeo"
    
    var foods: [String] = ["eggs", "bananas", "beans"] //배열
    var jazzs: Set<String> = ["bibidudu", "labdap", "dididudu"] //셋
    var hiphop: Set<String> = ["labdap", "rap", "wow"] //셋
    var koEngDic: [String:String] = ["사과":"apple","바나나":"banana"]
    
    var body: some View {
        VStack {
            Text(hiphop.intersection(jazzs).description)
            Text(koEngDic["사과"]!)
            Text(koEngDic["바나나"]!)
            
            Button {
                var intersectionMusic = hiphop.intersection(jazzs)
            } label: {
             Text("hit!")
            }
            
            Text(foods[0])
            Text(foods[1])
            Text(foods[2])
        }
    }
}

#Preview {
    MyCollections()
}
