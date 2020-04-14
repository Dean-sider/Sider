//
//  first.swift
//  siderHW
//
//  Created by User15 on 2020/4/12.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct first: View {
    var body: some View {
NavigationView {
    ZStack{
    NavigationLink(destination: seperate()){
    Image("introduction")
 .renderingMode(.original)//當按鈕時會變單一藍色,為了返回原圖片
         .resizable()
         .scaledToFit()
         .offset(y: 50)//照片位置
         .frame(width:350,height:900)//圓大小
         .clipShape(Circle())
         .overlay(Circle().stroke(Color.white, lineWidth: 3))
         .shadow(radius: 80)//陰影
         .offset(y: -80)//圓位置
         .frame(width:400,height:1000)
         .padding()
         }
   .background(LinearGradient(gradient: Gradient(colors:[Color(red:252/255,green:227/255,blue:220/255),Color(red:252/255,green:182/255,blue:159/255)]), startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x:1,y:0)))
        Text("SHE")
            .offset(y: 140)
            .font(.custom("Snell Roundhand",size:60))
    }
      .navigationBarTitle("Welcome", displayMode: .inline)
        }
    }
}
struct first_Previews: PreviewProvider {
    static var previews: some View {
        first()
    }
}
