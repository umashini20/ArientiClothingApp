//
//  NavigationScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI

struct NavigationScreen: View {
    var body: some View {
        TabView(){
                    HomeScreen(numberOfProducts: 1)
                        .tabItem {
                            Image(systemName: "house").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            Text("Home")
                        }
                        .tag(0)
                    SearchScreen()
                        .tabItem {
                            Image(systemName: "circle").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            Text("Search")
                        }
                        .tag(1)
            
                   ProductsScreen()
                        .tabItem {
                            Image(systemName: "bag").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            Text("Products")
                       }
                       .tag(2)

                    CartScreen()
                        .tabItem {
                            Image(systemName: "cart").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            Text("Cart")
                        }
                        .tag(3)
                    AccountScreen()
                        .tabItem {
                            Image(systemName: "person").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                            Text("Account")
                        }
                        .tag(4)
                }.accentColor(.lightPink)
    }
}

#Preview {
    NavigationScreen()
}
