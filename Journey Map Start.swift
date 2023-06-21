//
//  Journey Map Start.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 14/04/23.
//

import SwiftUI

struct Journey_Map_Start: View {
    var body: some View {
        ZStack {
            Image ("JOURNEY1")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                NavigationLink {
                    BungkulPark().navigationBarHidden(true)
                } label: {
                    Image ("TAP")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200)
                }
            }.frame(width: 200, height: 200)
                .position(x:350, y:690)
        }
        
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
        
    }
    
    struct Journey_Map_Start_Previews: PreviewProvider {
        static var previews: some View {
            Journey_Map_Start()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
