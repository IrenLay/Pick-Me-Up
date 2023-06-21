//
//  Game Intro.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 15/04/23.
//

import SwiftUI

struct Game_Intro: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("INTRO")
                    .resizable()
                    .ignoresSafeArea()
                NavigationLink {
                    Tutorial()
                } label: {
                    Image ("PLAY")
                        .frame(width:200, height:200)
                        .position(x: 680 , y: 830)
                }
                
                
            }
        } .navigationBarHidden(true)
            .navigationViewStyle(.stack)
    }
}


struct Game_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Game_Intro()  .previewInterfaceOrientation(.landscapeLeft)
    }
}
