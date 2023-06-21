import SwiftUI

struct BungkulPark: View {
    @State var bottle1 = 1
    @State var bottle2 = 1
    @State var bottle3 = 1
    @State var bottle4 = 1
    
    @State var isBottle = true
    
    
    @State var leaf1 = 1
    @State var leaf2 = 1
    @State var leaf3 = 1
    @State var leaf4 = 1
    
    @State var isOrganic = true
    @State var isFly = true
    @State var isFly2 = true
    @State var isFly3 = true
    @State var isFly4 = true
    @State var isFly5 = true
    @State var isFly6 = true
    @State var isFly7 = true
    @State var isFly8 = true
    
    @State var B1 = "BOTTLE 1"
    @State var B2 = "BOTTLE 2"
    @State var B3 = "BOTTLE 2"
    @State var B4 = "BOTTLE 1"
    @State var D1 = "DRY LEAF 2"
    @State var D2 = "DRY LEAF 1"
    @State var D3 = "DRY LEAF 2"
    @State var D4 = "DRY LEAF 1"
    
    @State var scoreNonOrganic = 4
    @State var scoreOrganic = 4
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("TAMAN BUNGKUL BACKDROP")
                        .resizable()
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
                Group{
                    Image(B1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 130)
                        .rotationEffect(.degrees(10))
                        .opacity(isFly == false ? 0:1)
                        .position(x: isFly ? 1040 : 820, y: isFly ? 370 : 130)
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
                                    B1 = "BOTTLE 1"
                                }
                            }
                        }
                    
                    
                    Image (B2)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 150)
                        .rotationEffect(.degrees(45))
                        .position(x: isFly2 ? 690 : 820 , y: isFly2 ? 420 : 130)
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
                        .frame(width: 500,height: 150)
                        .rotationEffect(.degrees(-45))
                        .position(x: isFly3 ? 580 : 820 , y: isFly3 ? 770 : 130)
                        .opacity(isFly3 == false ? 0:1)
                        .onTapGesture {
                            if isOrganic == false {
                                bottle3 = 0
                                scoreNonOrganic -= 1
                                withAnimation {
                                    isFly3 = false
                                }
                            }
                            else {
                                B3 = "CROSS"
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                    B3 = "BOTTLE 2"
                                }
                            }
                        }
                    
                    
                    Image (B4)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 150)
                        .rotationEffect(.degrees(65))
                        .position(x: isFly4 ? 180 : 820 , y: isFly4 ? 920 : 130)
                    //     .padding(.top,850)
                    //     .padding(.leading,-700)
                        .opacity(isFly4 == false ? 0:1)
                        .onTapGesture {
                            if isOrganic == false {
                                bottle4 = 0
                                scoreNonOrganic -= 1
                                withAnimation {
                                    isFly4 = false
                                }
                            }
                            else {
                                B4 = "CROSS"
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                    B4 = "BOTTLE 1"
                                }
                            }
                        }
                    
                    
                    Image (D1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 150)
                        .rotationEffect(.degrees(65))
                        .position(x: isFly5 ? 1250 : 555 , y: isFly5 ? 570 : 130)
                    //    .padding(.top,150)
                    //    .padding(.leading,870)
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
                        .position(x: isFly6 ? 1100 : 555 , y: isFly6 ? 780 : 130)
                    //     .padding(.top,540)
                    //     .padding(.leading,870)
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
                        .frame(width: 500,height: 150)
                        .rotationEffect(.degrees(25))
                        .position(x: isFly7 ? 850 : 555, y: isFly7 ? 780 : 130)
                    //     .padding(.top,650)
                    //     .padding(.leading,300)
                        .opacity(isFly7 == false ? 0:1)
                        .onTapGesture {
                            if isOrganic == true {
                                leaf3 = 0
                                scoreOrganic -= 1
                                withAnimation {
                                    isFly7 = false
                                }
                                
                            }
                            else {
                                D3 = "CROSS"
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                    D3 = "DRY LEAF 2"
                                }
                            }
                            
                        }
                    
                    Image (D4)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500,height: 150)
                        .rotationEffect(.degrees(-35))
                        .position(x: isFly8 ? 380 : 555, y: isFly8 ? 880 : 130)
                    //     .padding(.top,800)
                    //     .padding(.leading,-400)
                        .opacity(isFly8 == false ? 0:1)
                        .onTapGesture {
                            if isOrganic == true {
                                leaf4 = 0
                                scoreOrganic -= 1
                                withAnimation {
                                    isFly8 = false
                                }
                            }
                            else {
                                D4 = "CROSS"
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                                    D4 = "DRY LEAF 1"
                                }
                            }
                        }
                }
                
                if scoreOrganic == 0 && scoreNonOrganic == 0 {
                    ZStack{
                        Image ("BPARK")
                            .resizable()
                            .ignoresSafeArea()
                        NavigationLink {
                            Journey_Map()
                        } label: {
                            Image("NEXT")
                                .resizable()
                                .scaledToFit()
                                .frame(width:250)
                        } .position(x: 680 , y: 630)
                    }
                    
                }
                
            }
        }.navigationBarHidden(true)
        .navigationViewStyle(.stack)
        
        
    }
    
}


struct BungkulPark_Previews : PreviewProvider{
    static var previews: some View{
        BungkulPark()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
