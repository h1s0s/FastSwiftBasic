//
//  Elevator.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/20/24.
//

import SwiftUI

struct Elevator: View {
    
    @State var level: Int = 1
    
    @State var myElevator = ElevatorStruct()
    
    var body: some View {
        VStack {
            Text("층수 : \(myElevator.level)")
            HStack {
                Button {
                    myElevator.goDown()
                } label: {
                    Text("Down")
                }
                Button {
                    myElevator.goUp()
                } label: {
                    Text("Up")
                }
            }
        }
    }
    

}

struct ElevatorStruct {
    var level: Int = 1
    
    mutating func goDown() {
        level = level - 1
    }
    
    mutating func goUp() {
        level = level + 1
    }
}


#Preview {
    Elevator()
}
