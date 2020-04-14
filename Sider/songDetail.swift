//
//  songDetail.swift
//  siderHW
//
//  Created by User15 on 2020/4/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct songDetail: View {
    var song: Song
    var body: some View {
        ScrollView(.vertical){
            VStack {
                songDetailImage(song: song)
                MusicView()
                .offset(y:-70)
                .padding(61)
                Text(song.info)
                .offset(x:5)
            .font(.custom("Georgia-Bold",size:25))
            .padding()
            .offset(y:-150)
            Spacer()
            }
            .navigationBarTitle(song.name)
        }
    }
}

struct songDetail_Previews: PreviewProvider {
    static var previews: some View {
        songDetail(song: songs[0])
    }
}

struct songDetailImage: View {
    var song: Song
    var body: some View {
        Image(song.name)
            .resizable()
            .scaledToFill()
            .frame(height: 300)
            .clipped()
    }
}
