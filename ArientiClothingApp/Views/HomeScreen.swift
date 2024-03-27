//
//  HomeScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI
import Kingfisher

struct HomeScreen: View {
    //@StateObject var cartManager = CartManager()
    @EnvironmentObject var cartManager: CartManager
    @StateObject var bestsellerproductVM : BestSellerViewModel = BestSellerViewModel()
    @StateObject var categoryVM : CategoryViewModel = CategoryViewModel()
    @State var navigate : Bool = false
    @State var selectedBestSellerProduct : BestSellerProductList?
//    @State var selectedCategory : CategoryList?
  
    @State var isSelected : Bool = false
    
    @StateObject var productCatVM : ProductViewModel = ProductViewModel()
    @State var naviagte : Bool = false
    @State var selectedProductCat : Product?
    
    @StateObject var productVM : ProductViewModel = ProductViewModel()
    @State var selectedProduct : Product?
    
    @Binding var selectedCat: String
    @Binding var selectedTab: Int
    @State var selectedFilter = 0
    @State var selectedCategory: String = ""
    let filterOptions = ["TOPS","DRESSES","TEES","SKIRTS","Work Wear"]

    
//    var numberOfProducts:Int
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        
        NavigationStack{
            
            
            ScrollView {
                
                VStack{
                    
                    VStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            ZStack{
                                VStack{
                                    Image("promo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }.frame(maxWidth: 400,maxHeight:400,alignment: .topLeading)
                                   
                                
                            }.frame(maxWidth: 370)
                        })
                    }.padding()
                    
                    ZStack {
                        VStack {
                            Text("Shop by Category")
                                .frame(width: 320,height: 19,alignment: .leading)
                                .font(.system(size: 22,weight: .medium))
                                .padding()
                            HStack {
                                ScrollView(.horizontal, showsIndicators:false) {
                                    LazyHStack(spacing: -24) {
                                        let uniqueCatgories = productVM.filterCat(from: productVM.products)
                                        
                                        ForEach (uniqueCatgories.sorted(), id: \.self) {
                                            category in
                                            HStack {
                                                Button(action: {
                                                    selectedCat = category;
                                                    selectedTab = 2
                                                }, label: {
                                                    Text(category)
                                                        .font(.system(size: 15,weight: .medium))
                                                })
                                            }
                                            .padding()
                                            .frame(width: 120, height: 40)
                                            
                                        }
                                    }
                                }
                            }

                    
                        }
                       
                    }
                    ZStack{
                        VStack {
                            Text("Best Sellers")
                                .frame(width: 320,height: 19,alignment: .leading)
                                .font(.system(size: 22,weight: .medium))
                                .padding()
                            
                            
                                LazyVGrid(columns: columns, spacing: 20){
                                    ForEach(productVM.products.shuffled().prefix(6), id: \.id) {product in
                                        ProductCard(product: product).environmentObject(cartManager)
                                            .onTapGesture {
                                                selectedProduct = product
                                                isSelected = true
                                             
                                            }
                                    }
                                }.padding()
                                

                            
                        }
                    }
      
                }
                
                
                
                
            }
             .toolbar {
                 
                    HStack {
                        Text("Arienti")
                            .font(.system(size:35))
                            
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: 280)
                        
                        ZStack(alignment: .topTrailing){
                            
                            NavigationLink {
                                CartScreen()
                                    .environmentObject(cartManager)
                            } label: {
                                CartButton(numberOfProducts: cartManager.cartItems.count)
                            }
                                
                         
                        }
                    }
                }
               
    
        }
        
        .blur(radius : isSelected ? /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/ : 0)
        .navigationViewStyle(StackNavigationViewStyle())
        .overlay(
          ZStack{
              if isSelected{
                  ProductDetailsScreen(selectProduct: $selectedProduct, isShowingDetails: .constant(true), isSelected: $isSelected)
                      .frame(width: 300, height: 530)
                   
                  
              }
          }
              .frame(maxWidth: .infinity, maxHeight: .infinity)
                  
          )
        .onChange(of: isSelected) { newValue in
                   if !newValue {
                       selectedProduct = nil
                   }
               }
          
        

    }
}

@ViewBuilder func bestSellerCard(bestsellerproduct: BestSellerProductList) -> some View {
    ZStack(alignment: .topTrailing) {
        ZStack(alignment: .bottom){
            KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (bestsellerproduct.imageURL ?? "")))
                .resizable()
                .cornerRadius(20)
                .frame(width: 170,height: 250)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Text(bestsellerproduct.name ?? "")
                    .bold()
                    .foregroundStyle(Color(.black))

                Text("Rs \(bestsellerproduct.price)")
                        .font(.caption)
                        .foregroundStyle(Color(.black))

                
            }.padding()
                .frame(width: 170,alignment: .leading)
                .background(.white)
                .cornerRadius(20)
            
        }
        .frame(width: 170,height: 280)
        .shadow(radius: 3)
        
        Button(action: {
            print("added to cart")
        }, label: {
            Image(systemName: "cart")
                .padding(8)
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(50)
                .padding()
                
        })
    }
}


//#Preview {
//    HomeScreen(selectedCat:.constant("test") , selectedTab: .constant(0))
//        .environmentObject(CartManager())
//}
