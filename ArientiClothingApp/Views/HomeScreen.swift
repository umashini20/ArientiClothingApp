//
//  HomeScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI
import Kingfisher

struct HomeScreen: View {
    
    @StateObject var bestsellerproductVM : BestSellerViewModel = BestSellerViewModel()
    @StateObject var categoryVM : CategoryViewModel = CategoryViewModel()
    @State var navigate : Bool = false
    @State var selectedBestSellerProduct : BestSellerProductList?
//    @State var selectedCategory : CategoryList?
    
    @StateObject var productCatVM : ProductViewModel = ProductViewModel()
    @State var naviagte : Bool = false
    @State var selectedProductCat : Product?
    
    var numberOfProducts:Int
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView{
            
            
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
                    
                    ZStack{
                        VStack {
                            Text("Best Sellers")
                                .frame(width: 320,height: 19,alignment: .leading)
                                .font(.system(size: 22,weight: .medium))
                                .padding()
                            
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                
                                LazyVGrid(columns: columns, spacing: 20){
                                    ForEach(bestsellerproductVM.bestsellerproducts, id: \.id) {bestSellerProduct in
                                        bestSellerCard(bestsellerproduct: bestSellerProduct)
                                    }
                                }.padding()
                                
                            })
                            
                        }
                    }
                    
                    ZStack {
                        VStack {
                            Text("Shop by Category")
                                .frame(width: 320,height: 19,alignment: .leading)
                                .font(.system(size: 22,weight: .medium))
                                .padding()
                            
                            LazyVGrid(columns: columns, spacing: 20){
                                ForEach(productCatVM.products, id: \.id) {category in
//                                    NavigationLink(destination: ProductsScreen(selectedProduct: category)){
                                        newCategoryCard(newCategory: category)
                                        
                                  //  }
                                   
                                }
                        
                            }.padding()
                           
                        }
                       
                    }
                }
                
                
                
            }.navigationTitle("Arienti")
                .toolbar {
                    ZStack(alignment: .topTrailing){
                        Image(systemName: "cart").imageScale(.large)
                            .foregroundColor(.lightPink)
                            .padding(.top, 10)
                        
//                        if numberOfProducts > 0 {
//                            Text("\(numberOfProducts)")
//                                .font(.caption2).bold()
//                                .foregroundColor(.white)
//                                .frame(width: 15,height: 15)
//                                .background(Color(.creamPink))
//                                .cornerRadius(50)
//                        }
                    }
                }
               
    
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)

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

@ViewBuilder func newCategoryCard(newCategory: Product) -> some View {
    ZStack(alignment: .topTrailing) {
        ZStack(alignment: .bottom){
            KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (newCategory.category.catimageURL ?? "")))
                .resizable()
                .cornerRadius(20)
                .frame(width: 170,height: 250)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Text(newCategory.category.catname ?? "")
                    .bold()
                    .foregroundStyle(Color(.black))


                
            }.padding()
                .frame(width: 170,alignment: .leading)
                .background(.white)
                .cornerRadius(10)
            
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

#Preview {
    HomeScreen(numberOfProducts: 1)
}
