//
//  Sample.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/22/24.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(direction: .north, food: "파스타맛집", image: Image(systemName:"carrot.fill"))
        , Destination(direction: .east, food: nil, image: Image(systemName: "sunrise"))
        , Destination(direction: .west, food: nil, image: Image(systemName: "scribble"))
        , Destination(direction: .north, food: "순대맛집", image: Image(systemName: "figure"))
    ]
    
    @State var selectedDestination: Destination?
    
    var body: some View {
        
        selectedDestination?.image
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
        
        if let destinaion = selectedDestination {
            Text(destinaion.direction.rawValue)
            if let food = destinaion.food {
                Text(food)
            }
        }

        
        Button{
            selectedDestination = data.randomElement()
        } label: {
            Text("돌려요!")
        }
    }
}

struct Destination {
    let direction: DestinyDirection
    let food: String?
    let image: Image
}

enum DestinyDirection: String{
    case north = "북"
    case east = "동"
    case west = "서"
    case south = "남"
}

#Preview {
    Sample()
}
