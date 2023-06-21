//
//  Journey Map.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 13/04/23.
//

import SwiftUI

struct Journey_Map: View {
    var body: some View {
        ZStack {
            Image ("JOURNEY2")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                NavigationLink {
                    Surabaya_North_Quay().navigationBarHidden(true)
                } label: {
                    Image ("TAP")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200)
                }
            }.frame(width: 200, height: 200)
                .position(x:810, y:730)
        }
        
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
}

struct Journey_Map_Previews: PreviewProvider {
    static var previews: some View {
        Journey_Map()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
