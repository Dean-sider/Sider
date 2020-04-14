//
//  songrow.swift
//  siderHW
//
//  Created by User15 on 2020/4/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct songRow: View {
    var song: Song
    var body: some View {
        HStack {
            songRowImage(song: song)
            VStack(alignment: .leading){
                Text(song.name)
                    .foregroundColor(Color.black)
                    .font(Font.system(size:30))
                    .fontWeight(.semibold)
                    .offset(x: 20)
                Text(song.singing)
                    .foregroundColor(Color.black)
                    .fontWeight(.semibold)
                    .offset(x: 20)
            }
            Spacer()
        }
        .background(Color.orange)
    }
}

struct songRow_Previews: PreviewProvider {
    static var previews: some View {
        songRow(song: songs[0])
    }
}

struct songRowImage: View {
    var song: Song
    var body: some View {
        Image(song.name)
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            .frame(width: 120, height: 120)
            .clipped()
    }
}
