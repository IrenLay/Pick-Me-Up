//
//  Introduction 1.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 18/04/23.
//

import SwiftUI

struct Introduction_1: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("STORY1")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                    NavigationLink {
                        Introduction_2()
                    } label: {
                        Image ("NEXT")
                            .resizable()
                            .frame(width:350, height:200)
                            .position(x: 1180 , y: 880)
                    }
                    
                }
                
                
            }.navigationBarHidden(true)
            .navigationViewStyle(.stack)
    }
}

struct Introduction_1_Previews: PreviewProvider {
    static var previews: some View {
        Introduction_1().previewInterfaceOrientation(.landscapeLeft)

    }
}
