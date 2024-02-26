//
//  MyGeneric.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/26/24.
//

import SwiftUI

struct MyGeneric: View {
    
    @State var input = ""
    @State var myStack = MyStack<Any>()
    
    var body: some View {
        TextField("숫자를 입력해주세요", text: $input )
        Button {
            myStack.insertValue(input: Int(input) ?? 0)
        } label: {
            Text("저장")
        }
        Button{
            myStack.showData()
        } label: {
            Text("출력")
        }
    }
}

struct MyStack<T> {
    var data: [T] = []
    
    mutating func insertValue(input: T) {
        data.append(input)
    }
    
    func showData() {
        data.forEach { item in
            print(item)
        }
    }
}

#Preview {
    MyGeneric()
}
