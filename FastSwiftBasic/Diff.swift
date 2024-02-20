//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/20/24.
//

import SwiftUI

struct Diff: View {
    let myCar = Car(name: "리어카", owner: "리이오")
    let myKar = Kar(name: "리어카2", owner: "리이오2")
    @ObservedObject var observer = Observer(name: "리어카2", owner: "리이오2")
    
    
    var body: some View {
        VStack{
            Text("\(myCar.name)의 주인은 \(myCar.owner)입니다.")
            Button {
                myCar.sayHi()
            } label: {
                Text("출발")
            }
            
            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다.")
            Button {
                myKar.sayHi()
            } label: {
                Text("출발")
            }
        }

    }
}

struct Car {
    let name: String
    let owner: String
    
    func sayHi(){
        print("hi \(owner)")
    }
}

class Kar {
    let name: String
    let owner: String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayHi(){
        print("hi \(owner)")
    }
}

class Observer: ObservableObject {
    @Published var name: String
    let owner: String
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
    
    func sayHi(){
        print("hi \(owner)")
    }
}

#Preview {
    Diff()
}
