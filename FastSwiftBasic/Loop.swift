//
//  Loop.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/17/24.
//

import SwiftUI

struct Loop: View {
    
    let names: [String] = ["리이오", "리이사", "춘리", "올리브", "바미", "나리"]
    var body: some View {
        VStack{
            ForEach(names, id:\.self){ item in
                Text(item)
            }
        }
    }
}

#Preview {
    Loop()
}
