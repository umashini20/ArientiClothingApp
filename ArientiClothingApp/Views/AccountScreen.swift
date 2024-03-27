//
//  AccountScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct AccountScreen: View {
        
        @State private var email: String = ""
        @State private var address: String = ""
        @State private var contactNo: String = ""
    var body: some View {
        ZStack{
                    VStack{
                        HStack(spacing: 16){
                          
                            
                            VStack {
                                HStack {
                                    Image("person1")
                                        .resizable()
                                        .frame(width: 60,height: 60)
                                        .cornerRadius(30)
                                    Text("Hello User")
                                        .font(.system(size: 18, weight: .semibold))
                                        .foregroundStyle(.black)
                                        .fontWeight(.medium)
                                   
                                    
                                }
                                .padding(.bottom, 10)
                                Text("Email: ____________________")
                                    .font(.system(size: 16, weight: .semibold))
                                    .accentColor(.gray)
                                    .fontWeight(.light)
                                
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                              
                                
                               
                                
                                
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 30)
                        
                        Divider()
                        
                        ScrollView {
                            LazyVStack{
                                VStack {
                                    
     
                                    
    
                                    
                                    HStack (spacing: 16){
                                       Image(systemName: "bag.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 24, height: 24)
                                            .foregroundColor(.black)
                                        
                                        Text("Order")
                                            .font(.system(size: 18, weight: .semibold))
                                            .foregroundStyle(.black)
                                            .fontWeight(.medium)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        
                                        Image(systemName: "chevron.right")
                                             .resizable()
                                             .scaledToFit()
                                             .frame(width: 16, height: 16)
                                             .foregroundColor(.gray1)
                                        
                                    }
                                    .padding(20)
                                    Divider()
                                    
  
                                    
                                    HStack (spacing: 16){
                                       Image(systemName: "location.circle.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 24, height: 24)
                                        
                                        Text("Delivery Address")
                                            .font(.system(size: 18, weight: .semibold))
                                            .foregroundStyle(.black)
                                            .fontWeight(.medium)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        
                                        Image(systemName: "chevron.right")
                                             .resizable()
                                             .scaledToFit()
                                             .frame(width: 16, height: 16)
                                             .foregroundColor(.gray1)
                                        
                                    }
                                    .padding(20)
                                    Divider()
                                    

                                    
                                    HStack (spacing: 16){
                                       Image(systemName: "creditcard.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 24, height: 24)
                                        
                                        Text("Payment Methods")
                                            .font(.system(size: 18, weight: .semibold))
                                            .foregroundStyle(.black)
                                            .fontWeight(.medium)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        
                                        Image(systemName: "chevron.right")
                                             .resizable()
                                             .scaledToFit()
                                             .frame(width: 16, height: 16)
                                             .foregroundColor(.gray1)
                                        
                                    }
                                    .padding(20)
                                    Divider()
                                    
   
                                    
                                  
                                    

                                    
                                    HStack (spacing: 16){
                                       Image(systemName: "bell.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 24, height: 24)
                                        
                                        Text("Notification")
                                            .font(.system(size: 18, weight: .semibold))
                                            .foregroundStyle(.black)
                                            .fontWeight(.medium)
                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        
                                        Image(systemName: "chevron.right")
                                             .resizable()
                                             .scaledToFit()
                                             .frame(width: 16, height: 16)
                                             .foregroundColor(.gray1)
                                        
                                    }
                                    .padding(20)
                                    Divider()
                                    
 
                                }
                            }
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Logout")
                                .padding()
                                .padding(.horizontal)
                                .frame(width: 350, height: 60)
                                .background(Color("primary color"))
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                            })
                        .padding(.bottom, 25)
                    }
                    .padding(.bottom)
                }    }
}

#Preview {
    AccountScreen()
}
