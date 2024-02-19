//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/17/24.
//

import SwiftUI

struct ContentView: View {
    
    var place: String = "Paris"
    var name: String = "안준영"
    
    var body: some View {
        //Vstack : Vertical Stack
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(name + "님 안녕하세요!")
            Text("\(name)님 안녕하세요!")
            Text("안녕, 안준영?")
            Text("안녕, 안준영?")
            Text("안녕, 안준영?")
            Text("안녕, 안준영?" + "안돼니?")
        }
        .padding()
        

    }
}

#Preview {
    ContentView()
}
