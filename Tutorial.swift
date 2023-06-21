//
//  Tutorial.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 14/04/23.
//

import SwiftUI

struct Tutorial: View {
    @State var isOrganic = true
    @State var scoreNonOrganic = 1
    @State var scoreOrganic = 1
    @State var isFly = true
    @State var isFly5 = true
    @State var bottle1 = 1
    @State var leaf1 = 1
    
    var body: some View {
        ZStack{
            Image("TUT BACKDROP")
                .resizable()
                .ignoresSafeArea()
            ZStack{
                Image("BACKGROUND")
                    .resizable()
                    .frame(width:700,height: 400)
                    .position(x: 680, y: 130)
                HStack{
                    Image("ORGANIC")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 250)
                        .position(x: 540 , y: 130)
                        .opacity(isOrganic ? 1:0.5)
                    
                        .overlay{
                            Rectangle()
                                .fill(.red)
                                .frame(width: 50,height: 50)
                                .clipShape(Circle())
                                .opacity(isOrganic ? 1:0.5)
                                .position(x: 605 , y:70)
                            Text(String(scoreOrganic))
                                .font(.system(size: 40))
                                .opacity(isOrganic ? 1:0.5)
                                .position(x: 605 , y:70)
                            
                        }.onTapGesture {
                            isOrganic = true
                        }
                    
                    Image("NON ORGANIC")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 250)
                        .opacity(isOrganic ? 0.5 : 1)
                        .position(x: 130 , y:130)
                        .overlay{
                            Rectangle()
                                .fill(.red)
                                .frame(width: 50,height: 50)
                                .clipShape(Circle())
                                .opacity(isOrganic ? 0.5 : 1)
                                .position(x: 190 , y:70)
                            Text(String(scoreNonOrganic))
                                .font(.system(size: 40))
                                .opacity(isOrganic ? 0.5 : 1)
                                .position(x: 190 , y:70)
                        }.onTapGesture {
                            isOrganic = false
                        }
                }
            }
            Image ("BOTTLE 1")
                .resizable()
                .scaledToFit()
                .frame(width: 800,height: 330)
                .rotationEffect(.degrees(10))
                .opacity(isFly == false ? 0:1)
                .position(x: isFly ? 375 : 820, y: isFly ? 670 : 130)
                .onTapGesture {
                    if isOrganic == false {
                        bottle1 = 0
                        scoreNonOrganic -= 1
                        withAnimation {
                            isFly = false
                        }
                    }
                }
            
            Image ("DRY LEAF 2")
                .resizable()
                .scaledToFit()
                .frame(width: 500,height: 330)
                .rotationEffect(.degrees(65))
                .position(x: isFly5 ? 950 : 555 , y: isFly5 ? 670 : 130)
                .opacity(isFly5 == false ? 0:1)
                .onTapGesture {
                    if isOrganic == true {
                        leaf1 = 0
                        scoreOrganic -= 1
                        withAnimation {
                            isFly5 = false
                        }
                        
                    }
                    
                }
            if scoreOrganic == 0 {
                Image("NONORGBIN")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 450)
                    .position(x: 800, y: 300)
                .opacity(isOrganic == false ? 0:1)}
            
            if isOrganic == false {
                Image ("TRASH")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 500)
                    .position(x:400 , y:470)
                .opacity(scoreNonOrganic == 0 ? 0:1)}
            
            if scoreNonOrganic == 0 {
                Image ("TRASH")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 500)
                    .position(x:400 , y:470)
                .opacity(scoreNonOrganic == 0 ? 0:1)}
            
            if isOrganic == true {
                Image ("ORG")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 500)
                    .position(x: 200 , y: 130)
                .opacity(scoreOrganic == 0 ? 0:1)}
            
            if isOrganic == true {
                Image ("TRASH")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 500)
                    .position(x: 900 , y: 470)
                .opacity(scoreOrganic == 0 ? 0:1)}
            
            if scoreOrganic == 0 && scoreNonOrganic == 0 {
                Image ("BTUT")
                    .resizable()
                    .ignoresSafeArea()
                NavigationLink {
                    Journey_Map_Start()
                } label: {
                    Image("NEXT")
                        .resizable()
                        .scaledToFit()
                        .frame(width:250)
                } .position(x: 680 , y: 630)
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
    }
    
    
    struct Tutorial_Previews : PreviewProvider{
        static var previews: some View{
            Tutorial()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

