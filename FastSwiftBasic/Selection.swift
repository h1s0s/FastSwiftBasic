//
//  Selection.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/21/24.
//

import SwiftUI

struct Selection: View {
    
    //Swift 중요한 개념 1
    //View 자체는 struct이기 때문에 화면을 최초 생성한 이후에 struct를 변경해도
    //이미 만들어진 구조체는 변경되지 않아야 하지만, 값이 변경되면 화면도 같이 변경되어야 하기 때문에
    //특성 상 변수값에 @State 프로퍼티래퍼를 붙여주어 이 값이 변하면 화면이 변하게끔 만들어 준다.
    @State var myDirection: Direction2 = .south
    
    var body: some View {
        VStack{
            switch myDirection {
            case .north:
                Text("\(myDirection.rawValue)쪽은 추워요")
            case .west:
                Text("\(myDirection.rawValue)쪽은 석양이 예뻐요")
            case .east:
                Text("\(myDirection.rawValue)쪽으로 해 보러 갈래요?")
            case .south:
                Text("\(myDirection.rawValue)쪽으로 쉬러가요!")
            }
            
            Button {
                switch myDirection {
                case .north:
                    myDirection = .east
                case .west:
                    myDirection = .north
                case .east:
                    myDirection = .south
                case .south:
                    myDirection = .west
                }
                
            } label: {
                Text("방향 돌리기")
            }
        }
    }
}

//Invalid redeclaration of 'Direction' 라는 에러가 나왔는데, 같은 패키지 내에
//다른 swift 파일의 명과 겹치면 안된다는 경고였음. 참고.
enum Direction2: String{
    case north = "북"
    case east = "동"
    case west = "서"
    case south = "남"
}
#Preview {
    Selection()
}
