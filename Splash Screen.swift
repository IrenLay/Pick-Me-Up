//
//  Splash Screen.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 15/04/23.
//

import SwiftUI

struct Splash_Screen: View {
    var body: some View {
        ZStack{
            Image("OPEN")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            NavigationLink {
                Game_Intro()
            } label: {
                Image ("START")
                    .frame(width:200, height:200)
                    .position(x: 680 , y: 830)
            }
            
        }.navigationBarHidden(true)
            .navigationViewStyle(.stack)
    }
}


struct Splash_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Splash_Screen().previewInterfaceOrientation(.landscapeLeft)
    }
}
