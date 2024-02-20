//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/20/24.
//

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .north
    var member: Member = .kero
    
    var body: some View {
        Text("\(member.rawValue)님 안녕하세요! 방향은 \(direction.rawValue)쪽 입니다.")
    }
}
enum Member: String {
    case leeo = "인간1"
    case kero = "인간2"
    case bami = "인간3"
}
enum Direction: String{
    case north = "북"
    case east = "동"
    case west = "서"
    case south = "남"
}

#Preview {
    Choice()
}
