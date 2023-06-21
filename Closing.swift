//
//  Closing.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 18/04/23.
//

import SwiftUI

struct Closing: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("DONE")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                    NavigationLink {
                        BungkulPark()
                    } label: {
                        Image ("REPLAY")
                            .resizable()
                            .frame(width:350, height:200)
                            .position(x: 1180 , y: 880)
                    }
                    
                }
                
                
            }.navigationBarHidden(true)
            .navigationViewStyle(.stack)
    }
}

struct Closing_Previews: PreviewProvider {
    static var previews: some View {
        Closing().previewInterfaceOrientation(.landscapeLeft)

    }
}
