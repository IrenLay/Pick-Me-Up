//
//  Surabaya North Quay.swift
//  Pick Me Up
//
//  Created by Irene Paulina Lay on 14/04/23.
//

import SwiftUI

struct Surabaya_North_Quay: View {
    @State var bottle1 = 1
    @State var bottle2 = 1
    @State var bag1 = 1
    @State var bag2 = 1
    
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
    @State var B3 = "BAG"
    @State var B4 = "BAG"
    @State var D1 = "DRY LEAF 2"
    @State var D2 = "DRY LEAF 1"
    @State var D3 = "COCONUT"
    @State var D4 = "COCONUT"
    
    @State var scoreNonOrganic = 4
    @State var scoreOrganic = 4
    
    var body: some View {
        ZStack {
            VStack {
                Image("NORTH QUAY BACKDROP")
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
                    .rotationEffect(.degrees(10))
                    .opacity(isFly == false ? 0:1)
                    .position(x: isFly ? 1040 : 820, y: isFly ? 480 : 130)
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
                    .frame(width: 500,height: 150)
                    .rotationEffect(.degrees(45))
                    .position(x: isFly2 ? 340 : 820 , y: isFly2 ? 900 : 130)
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
                    .frame(width: 500,height: 180)
                    .rotationEffect(.degrees(-20))
                    .position(x: isFly3 ? 370 : 820 , y: isFly3 ? 685 : 130)
                    .opacity(isFly3 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == false {
                            bag1 = 0
                            scoreNonOrganic -= 1
                            withAnimation {
                                isFly3 = false
                            }
                        }
                        else {
                            B3 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                B3 = "BAG"
                            }
                        }
                    }
                
                
                Image (B4)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 180)
                    .rotationEffect(.degrees(-25))
                    .position(x: isFly4 ? 1080 : 820 , y: isFly4 ? 900 : 130)
                    .opacity(isFly4 == false ? 0:1)
                    .onTapGesture {
                        if isOrganic == false {
                            bag2 = 0
                            scoreNonOrganic -= 1
                            withAnimation {
                                isFly4 = false
                            }
                        }
                        else {
                            B4 = "CROSS"
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                B4 = "BAG"
                            }
                        }
                    }
                
                
                Image (D1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500,height: 150)
                    .rotationEffect(.degrees(65))
                    .position(x: isFly5 ? 1070 : 555 , y: isFly5 ? 720 : 130)
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
                    .frame(width: 500,height: 150)
                    .rotationEffect(.degrees(-65))
                    .position(x: isFly6 ? 700 : 555 , y: isFly6 ? 850 : 130)
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
                    .frame(width: 500,height: 180)
                    .rotationEffect(.degrees(05))
                    .position(x: isFly7 ? 910 : 555, y: isFly7 ? 780 : 130)
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
                    .frame(width: 500,height: 180)
                    .rotationEffect(.degrees(05))
                    .position(x: isFly8 ? 180 : 555, y: isFly8 ? 450 : 130)
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
                    Image ("BSNQ")
                        .resizable()
                        .ignoresSafeArea()
                    NavigationLink {
                        Journey_Map_Final()
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

struct Surabaya_North_Quay_Previews: PreviewProvider {
    static var previews: some View {
        Surabaya_North_Quay()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
