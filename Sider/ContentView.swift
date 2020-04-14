//
//  ContentView.swift
//  deanfang
//
//  Created by User15 on 2020/4/10.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let photoWidth = (UIScreen.main.bounds.size.width - 10)/2//調整圖片大小
    var body: some View{
    ForEach(0..<Contents.count){(row) in
        VStack(spacing:35){ ForEach(0..<Contents[row].name.count){(column) in
            NavigationLink(destination: singerDetail(actor:singers[row+column])){
            VStack{
            Image(Contents[row].name[column])
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 140, height: self.photoWidth)
                .clipped() .clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius:5)//陰影
            Text(Contents[row].name[column])
            .fontWeight(.semibold)
            }
            }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        }
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*struct Song{
    let name:String
    let singer:String
}
struct SongRow:View{
    let song: Song
    var body:some View{
        HStack{
         Image("introduction3")
            .resizable()
            .scaledToFit()
            .frame(width:80,height:80)//圓大小
            .clipped()
        VStack(alignment:.leading){
            Text(song.name)
            Text(song.singer)
            }
            Spacer()
        }
    }
}
            struct SongRow_Previews:PreviewProvider{
                static var previews:some View{
                    SongRow(song: Song(name: "戀人未滿",singer:"SHE"))
                    .previewLayout(.fixed(width:300,height:70))
                }
            }
            
            
        struct SongList:View{
            let songs = [
            SongRow(song: Song(name:"金鐘罩",singer:"SHE")),
            SongRow(song:Song(name:"冰箱",singer:"SHE"))
            ]
            var body: some View{
                List(songs.indices){ (index) in
                    SongRow(song: songs[index])
                }
              }
            }
*/


