//
//  ContenListView.swift
//  siderHW
//
//  Created by User15 on 2020/4/12.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct ContenListView: View {
    var body: some View {
        ZStack{
           List{
               ContentView()
               .offset(x:115)
           }
        .onAppear {
    UITableView.appearance().separatorColor = .clear//清除分隔線
            }
            
        }
    }
   
}
struct ContenListView_Previews: PreviewProvider {
    static var previews: some View {
        ContenListView()
    }
}

