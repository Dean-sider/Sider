//
//  songList.swift
//  siderHW
//
//  Created by User15 on 2020/4/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct songList: View {
    var body: some View {
        NavigationView{
            List{
                FirstSection()
                SecondSection()
            }
            .navigationBarTitle("SHE Music", displayMode: .inline)
        }
    }
}

struct songList_Previews: PreviewProvider {
    static var previews: some View {
        songList()
    }
}

struct FirstSection: View {
    var body: some View {
        Section(header: Text("NEW Music").fontWeight(.bold)) {
            ScrollView(.horizontal){
                HStack(spacing: 10){
                    ForEach(0..<news.count){ (index) in NavigationLink(destination: songDetail(song: songs[index])) {
                        Image(news[index].she)
                        .renderingMode(.original)
                        .scaledToFill()
                        .offset(y:20)
                        .frame(width: 380,height: 300)
                         .cornerRadius(0)
                        }
                    }
                }
            }
        }
    }
}

struct SecondSection: View {
    var body: some View {
        Section(header: Text("Popular Music").fontWeight(.bold)) {
            ScrollView(.vertical){
                ForEach(0..<songs.count){ (index) in
                    NavigationLink(destination: songDetail(song: songs[index])){
                        VStack{
                        songRow(song: songs[index])
                        }
                    }
                }
            }
        }
    }
}

