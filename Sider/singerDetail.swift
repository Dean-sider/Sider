//
//  singerDetail.swift
//  siderHW
//
//  Created by User15 on 2020/4/12.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct singerDetail: View {
    var actor: Singer
    var body: some View {
        NavigationView{
ZStack{
    NavigationLink(destination: run()){
        List{
            ScrollView(.vertical){
                VStack{
                SingerImage(actor: actor)
                    Text(actor.info)
                        .frame(width:350,height:700)
                    .offset(x:-10,y: -80) .font(.custom("Georgia-Bold",size:25))
                .padding()
               }
                 }
            .navigationBarTitle(actor.name)
                    }
                }
            }
        }
    }
}

struct singerDetail_Previews: PreviewProvider {
    static var previews: some View {
        singerDetail(actor: singers[0])
    }
}

struct SingerImage: View {
    var actor: Singer
    var body: some View {
        Image(actor.name)
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width:350,height:800)//圓大小
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth:2))
            .offset(x:-10,y:-20)//圓位置
            .frame(width:400,height:400)
        
  
    }
}
