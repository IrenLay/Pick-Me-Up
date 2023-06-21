//
//  Journey Map Final.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 14/04/23.
//

import SwiftUI

struct Journey_Map_Final: View {
    var body: some View {
        ZStack {
            Image ("JOURNEY3")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                NavigationLink {
                    Tunjungan_Street().navigationBarHidden(true)
                } label: {
                    Image ("TAP")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200)
                }
            }.frame(width: 200, height: 200)
                .position(x:1040, y:430)
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}


struct Journey_Map_Final_Previews: PreviewProvider {
    static var previews: some View {
        Journey_Map_Final()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
