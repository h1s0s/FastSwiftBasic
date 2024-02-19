//
//  Function.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/17/24.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        VStack{
            Text("input number is \(inputNumber)")
            
            Button(action: {
                inputNumber = plusFive(with: inputNumber)
            }, label: {
                Text("+5")
            })
        }
    }
    
    func plusFive (with input: Int) -> Int {
        return input + 5;
    }
}



#Preview {
    Function()
}
