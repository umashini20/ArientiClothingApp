//
//  ProductsScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI
import Kingfisher

struct ProductsScreen: View {
    
   // @StateObject var cartManager = CartManager()
    @EnvironmentObject var cartManager: CartManager
    @StateObject var productVM : ProductViewModel = ProductViewModel()
    @State var navigate : Bool = false
    @State var selectedProduct : Product?
    @State var isSelected : Bool = false
    @Binding var selectedCat: String
//    var numberOfProducts:Int
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var filteredCategory: [Product] {
        guard !selectedCat.isEmpty else {return productVM.products}
        return productVM.products.filter{ $0.category.localizedStandardContains(selectedCat)}
    }
    var body: some View {
        
        NavigationView{
            ScrollView {
                VStack{
                    ZStack{
                        VStack {
        
                            
                            if !(selectedCat == ""){
                                HStack{
                                    Text("Category: \( selectedCat)")
                                        .bold()
                                        .foregroundColor(.lightPink)
                                       
                                    Spacer()
                                        
                                    
                                    
                                }.padding()
                                //
                                LazyVGrid(columns: columns, spacing: 20){
                                    ForEach(filteredCategory, id: \.id) {product in
                                        ProductCard(product: product).environmentObject(cartManager)
                                            .onTapGesture {
                                                selectedProduct = product
                                                isSelected = true
                                                
                                            }
                                    }.padding(.leading)
                                }
                            }
//                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                
                            VStack {
                                Text("All Products")
                                    .frame(width: 320,height: 19,alignment: .leading)
                                    .font(.system(size: 22,weight: .medium))
                                    .padding()
                                LazyVGrid(columns: columns, spacing: 20){
                                        ForEach(productVM.products, id: \.id) {product in
                                            ProductCard(product: product).environmentObject(cartManager)
                                                .onTapGesture {
                                                    selectedProduct = product
                                                    isSelected = true
                                                 
                                                }
    //                                        if isSelected{
    //                                            ProductDetailsScreen(selectProduct: $selectedProduct, isShowingDetails: .constant(true))
    //                                            
    //                                        }
                                        }
                                }.padding()
                            }
                         
                            
                        }
                    }
                    
                }
                
                
                
            }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ZStack {
                        
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
        }
      
      .blur(radius : isSelected ? /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/ : 0)
//        .navigationViewStyle(StackNavigationViewStyle())
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

@ViewBuilder func clothCard(product: Product) -> some View {
    @EnvironmentObject var cartManager: CartManager
    
ZStack(alignment: .topTrailing) {
   ZStack(alignment: .bottom){
       KFImage.url(URL(string: "https://www.arienti.lk/cdn/shop/files" + (product.imageURL ?? "")))
           .resizable()
           .cornerRadius(20)
           .frame(width: 170,height: 250)
           .scaledToFit()
       
       VStack(alignment: .leading){
           Text(product.name ?? "")
               .bold()
               .foregroundStyle(Color(.black))

           Text("Rs \(product.price)")
                   .font(.caption)
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

    

//#Preview {
//    ProductsScreen(selectedCat: .constant("sample"))
//        .environmentObject(CartManager())
//}
