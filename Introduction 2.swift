//
//  Introduction 2.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 18/04/23.
//

import SwiftUI

struct Introduction_2: View {
    var body: some View {
        ZStack{
            Image("STORY2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            NavigationLink {
                Splash_Screen()
            } label: {
                Image ("NEXT")
                    .resizable()
                    .frame(width:350, height:200)
                    .position(x: 1180 , y: 880)
            }
            
            
        }.navigationBarHidden(true)
            .navigationViewStyle(.stack)
    }
    
    
    struct Introduction_2_Previews: PreviewProvider {
        static var previews: some View {
            Introduction_2().previewInterfaceOrientation(.landscapeLeft)

        }
    }
}
