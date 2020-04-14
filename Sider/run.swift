//
//  run.swift
//  Sider
//
//  Created by User15 on 2020/4/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct run: View {
    @State private var moveDistance: CGFloat = 0
       @State private var opacity: Double = 1
    var body: some View {
        ZStack{
            Image("back")
            .resizable()
            .scaledToFit()
            .scaledToFill()
        .frame(width: 140, height: 1000)
        VStack {
        Button("                   哈囉大家好\n   我是Selina媽媽的小狗狗Pinky\n      謝謝媽媽過去對我的照顧\n希望未來的每一天媽媽能夠拋下\n        過去,讓自己過得更開心\n                 那我先走一步嘍\n                          掰掰"){
            self.moveDistance += 100
            self.opacity -= 0.3
        }
        .font(.title)
        HStack {
       Image("dog")
        .offset(x:-20 , y: -moveDistance)
        .opacity(opacity)
        .animation(.easeOut(duration: 9))
            }
        }
    }
    }
}

struct run_Previews: PreviewProvider {
    static var previews: some View {
        run()
    }
}
