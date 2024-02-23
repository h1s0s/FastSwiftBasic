//
//  MyCar.swift
//  FastSwiftBasic
//
//  Created by 한상선 on 2/23/24.
//

import SwiftUI

struct MyCar: View {
    var myCar: KIA = KIA(id: <#ObjectIdentifier#>)
    var broCar: Hyundai = Hyundai(id: <#ObjectIdentifier#>)
    @State var speed: Int = 10
    //같은 프로토콜의 객체라면, Array로 묶을 수 있다.
    let cars: [Driveable] = [KIA(id: <#ObjectIdentifier#>), Hyundai(id: <#ObjectIdentifier#>)]
    
    var body: some View {
        Text("spped: \(speed)")
        Button {
            myCar.speedDown(with: speed)
            cars.randomElement()?.speedDown(with: speed)
        } label: {
            Text("감속!")
        }
        
        //driveable이 identifiable 하지 않다는 에러가 남. 아이디를 무조건 구현해야함. 정말 중요한 기능
        ForEach(cars){ item in
            item?.speedDown(with: <#T##Int#>)
        }
    }
}

struct KIA: Driveable, Identifiable {
    var id: ObjectIdentifier
    
    func speedDown(with speed: Int) -> Int {
        print("속도가 -5 줄어듭니다.")
        return speed - 5
    }
}

struct Hyundai: Driveable, Identifiable {
    var id: ObjectIdentifier
    
    func speedDown(with speed: Int) -> Int {
        print("속도가 -2 줄어듭니다.")
        return speed - 2
    }
}

//프로토콜 인터페이스 같은거네
protocol Driveable {
    func speedDown(with spped: Int) -> Int
}

#Preview {
    MyCar()
}
