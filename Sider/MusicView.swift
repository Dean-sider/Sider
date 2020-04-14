//
//  MusicView.swift
//  Sider
//
//  Created by User15 on 2020/4/14.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI
import AVFoundation//加入 AVFoundation 函式庫(framework)
import MediaPlayer
struct MusicView: View {
    @State var play = true
    let player = AVPlayer()//宣告 AVPlayer 型別的 property player。
    var body: some View {
        HStack{
            Image("十七")
                .resizable()
                .frame(width:70,height:50)
                .scaledToFill()
            Text("十七\n原唱者：SHE")
                .font(.custom("GillSans-UltraBold",size:20))
                .bold()
                .foregroundColor(Color.white)
                Spacer()
            Button(action:{
                //設定 player 播放的音樂並開始播放
                let fileUrl = Bundle.main.url(forResource: "十七", withExtension:"mp3")!
                let playerItem = AVPlayerItem(url: fileUrl)
                self.player.replaceCurrentItem(with: playerItem)
                self.play.toggle()
                if (self.play){
                    self.player.pause()//暫停
                }
                else{
                    self.player.play()//播放
               }
            }){
                Image(systemName: play ? "play.circle" : "pause.circle")
                    .resizable()
                    .frame(width:40,height:40)
                    .foregroundColor(Color(hue: 0.141, saturation: 0.967, brightness: 0.967))
            }
        }
        .padding(10)
        .background(LinearGradient(gradient: Gradient(colors:[Color(red:255/255,green:215/255,blue:159/255),Color(red:150/255,green:243/255,blue:252/255)]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x:1,y:1)))
        }
    }
struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
