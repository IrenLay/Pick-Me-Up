//
//  Tunjungan Street.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 14/04/23.
//

import SwiftUI

struct Tunjungan_Street: View {
    @State var bottle1 = 1
    @State var bottle2 = 1
    @State var plastik1 = 1
    @State var plastik2 = 1
    
    @State var leaf1 = 1
    @State var leaf2 = 1
    @State var coconut1 = 1
    @State var coconut2 = 1
    
    @State var isOrganic = true
    @State var isFly = true
    @State var isFly2 = true
    @State var isFly3 = true
    @State var isFly4 = true
    @State var isFly5 = true
    @State var isFly6 = true
    @State var isFly7 = true
    @State var isFly8 = true
    
    @State var B1 = "BOTTLE 2"
    @State var B2 = "BOTTLE 2"
    @State var B3 = "PLASTIK"
    @State var B4 = "PLASTIK"
    
    @State var D1 = "DRY LEAF 2"
    @State var D2 = "DRY LEAF 1"
    @State var D3 = "COCONUT"
    @State var D4 = "COCONUT"
    
    @State var scoreNonOrganic = 4
    @State var scoreOrganic = 4
    
    var body: some View {
        ZStack {
            VStack {
                Image("TUNJUNGAN BACKDROP")
                    .resizable()
                //            Text("Good Morning")
            }.ignoresSafeArea()
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
                    //  .padding(.top,-500)
                        .overlay{
                            Rectangle()
                                .fill(.red)
                                .frame(width: 50,height: 50)
                                .clipShape(Circle())
                                .opacity(isOrganic ? 1:0.5)
                                .position(x: 605 , y:70)
                            //  .padding(.top,-450)
                            //  .padding(.leading, 150)
                            Text(String(scoreOrganic))
                                .font(.system(size: 40))
                                .opacity(isOrganic ? 1:0.5)
                                .position(x: 605 , y:70)
                            //  .padding(.top,-450)
                            //  .padding(.leading, 150)
                            
                        }.onTapGesture {
                            isOrganic = true
                        }
                    
                    Image("NON ORGANIC")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 250)
                        .opacity(isOrganic ? 0.5 : 1)
                        .position(x: 130 , y:130)
                    // .padding(.top,-500)
                    //.padding(.leading,-200)
                        .overlay{
                            Rectangle()
                                .fill(.red)
                                .frame(width: 50,height: 50)
                                .clipShape(Circle())
                                .opacity(isOrganic ? 0.5 : 1)
                                .position(x: 190 , y:70)
                            //  .padding(.top,-450)
                            //  .padding(.leading, -60)
                            Text(String(scoreNonOrganic))
                                .font(.system(size: 40))
                                .opacity(isOrganic ? 0.5 : 1)
                                .position(x: 190 , y:70)
                            //   .padding(.top,-450)
                            //   .padding(.leading, -45)
                            
                        }.onTapGesture {
                            isOrganic = false
                        }
                }
            }
            Group{
                Image (B1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(50))
                    .opacity(isFly == false ? 0:1)
                    .position(x: isFly ? 840 : 820, y: isFly ? 880 : 130)
                //    .padding(.top,-200)
                //    .padding(.leading,750)
                
                    .onTapGesture {
                        if isOrganic == false {
                            bottle1 = 0
                            scoreNonOrganic -= 1
                            withAnimation {
                                isFly = false
                            }
                        }
                        else {
                            B1 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                B1 = "BOTTLE 2"
                            }
                        }
                    }
                
                
                Image (B2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(-25))
                    .position(x: isFly2 ? 340 : 820 , y: isFly2 ? 700 : 130)
                //     .padding(.top,-160)
                //     .padding(.leading,140)
                    .opacity(isFly2 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == false {
                            bottle2 = 0
                            scoreNonOrganic -= 1
                            withAnimation {
                                isFly2 = false
                            }
                        }
                        else {
                            B2 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                B2 = "BOTTLE 2"
                            }
                        }
                    }
                Image (B3)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(20))
                    .position(x: isFly3 ? 500 : 820 , y: isFly3 ? 585 : 130)
                    .opacity(isFly3 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == false {
                            plastik1 = 0
                            scoreNonOrganic -= 1
                            withAnimation {
                                isFly3 = false
                            }
                        }
                        else {
                            B3 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                B3 = "PLASTIK"
                            }
                        }
                    }
                
                
                Image (B4)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(-25))
                    .position(x: isFly4 ? 980 : 820 , y: isFly4 ? 730 : 130)
                //     .padding(.top,850)
                //     .padding(.leading,-700)
                    .opacity(isFly4 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == false {
                            plastik2 = 0
                            scoreNonOrganic -= 1
                            withAnimation {
                                isFly4 = false
                            }
                        }
                        else {
                            B4 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                B4 = "PLASTIK"
                            }
                        }
                    }
                
                
                Image (D1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(65))
                    .position(x: isFly5 ? 770 : 555 , y: isFly5 ? 620 : 130)
                    .opacity(isFly5 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == true {
                            leaf1 = 0
                            scoreOrganic -= 1
                            withAnimation {
                                isFly5 = false
                            }
                            
                        }
                        else {
                            D1 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                D1 = "DRY LEAF 2"
                            }
                        }
                        
                    }
                
                Image (D2)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(-65))
                    .position(x: isFly6 ? 500 : 555 , y: isFly6 ? 900 : 130)
                    .opacity(isFly6 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == true {
                            leaf2 = 0
                            scoreOrganic -= 1
                            withAnimation {
                                isFly6 = false
                            }
                            
                        }
                        else {
                            D2 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                D2 = "DRY LEAF 1"
                            }
                        }
                        
                    }
                
                Image (D3)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(05))
                    .position(x: isFly7 ? 930 : 555, y: isFly7 ? 510 : 130)
                    .opacity(isFly7 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == true {
                            coconut1 = 0
                            scoreOrganic -= 1
                            withAnimation {
                                isFly7 = false
                            }
                            
                        }
                        else {
                            D3 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                D3 = "COCONUT"
                            }
                        }
                        
                    }
                
                Image (D4)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 130)
                    .rotationEffect(.degrees(05))
                    .position(x: isFly8 ? 430 : 555, y: isFly8 ? 510 : 130)
                    .opacity(isFly8 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == true {
                            coconut2 = 0
                            scoreOrganic -= 1
                            withAnimation {
                                isFly8 = false
                            }
                        }
                        else {
                            D4 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                D4 = "COCONUT"
                            }
                        }
                    }
            }
            if scoreOrganic == 0 && scoreNonOrganic == 0 {
                Group{
                    Image ("BT")
                        .resizable()
                        .ignoresSafeArea()
                    NavigationLink {
                        Closing()
                    } label: {
                        Image("NEXT")
                            .resizable()
                            .scaledToFit()
                            .frame(width:250)
                    } .position(x: 680 , y: 630)
                }
            }
            
        }.navigationBarHidden(true)
        
            .navigationViewStyle(.stack)
        
    }
}

struct Tunjungan_Street_Previews: PreviewProvider {
    static var previews: some View {
        Tunjungan_Street()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
