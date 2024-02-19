//
//  VariableType.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/17/24.
//

import SwiftUI

struct VariableType: View {
    //02. 변수의 타입
    /*
     String, 문자열
     Int(integer) 정수
     Float 실수
     Double 더 큰 실수
     Bool true, false
     */
    var name: String = "안준영"
    var age: Int = 36
    var height: Float = 168.0
    var weight: Double = 82.0
    var havePet: Bool = false
    var body: some View {
        VStack{
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
        
    }
}

#Preview {
    VariableType()
}
