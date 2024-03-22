//
//  ContentView.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .topLeading){
                HStack(alignment: .top){
                    
                    HStack{
                        Image("pic5")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width:150, height: 525)
                            .cornerRadius(20)
                    }.frame(maxWidth: 150,maxHeight: 525,alignment: .topLeading)
                    
                    ZStack(alignment: .bottom){
                        HStack{
                            Image("pic1")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 150, height: 245)
                                .cornerRadius(40)
                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity,alignment: .topLeading)
                        
                        HStack{
                            Image("pic2")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 150, height: 250)
                                .cornerRadius(60)
                            
                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 250,alignment: .topLeading)
                    }.frame(maxWidth: 170,maxHeight: 525,alignment: .top)
                    
                    
                }.frame(maxWidth: .infinity,maxHeight:700,alignment: .top)
                
                ZStack{
                    Text("The ") +
                    Text("Arienti ").foregroundColor(.pink1) +
                    Text("That Makes You Look Perfect")
                }.frame(maxWidth: .infinity,maxHeight: 585, alignment: .bottom)
                    .font(.system(size: 20))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                
                Text("Fashion at your fingertips: Explore Arienti App Today")
                    .frame(maxWidth: .infinity,maxHeight: 625, alignment: .bottom)
                    .font(.system(size: 14))
                    .foregroundColor(.gray1)
                    .multilineTextAlignment(.center)
                    .padding()
            
                NavigationLink {
                    HomeScreen(numberOfProducts: 1)
                } label: {
                    Button {
                      
                        } label: {
                            Text("Lets's Started")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold))
                                .frame(maxWidth: 370, minHeight: 50, alignment: .center)
                                .background(.lightPink)
                                .cornerRadius(15)
                        }
                        .frame(maxWidth: .infinity,maxHeight: 695, alignment: .bottom)
                }
                    
                        
                        
                        
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity,alignment:.top)
                    .padding()
            }
            
        }
    }
}

#Preview {
    MainScreen()
}
