//
//  ProductsScreen.swift
//  ArientiClothingApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-21.
//

import SwiftUI
import Kingfisher

struct ProductsScreen: View {
    
    @StateObject var productVM : ProductViewModel = ProductViewModel()
    @State var navigate : Bool = false
    @State var selectedProduct : Product?
    @State var isSelected : Bool = false
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        
        NavigationView{
            ScrollView {
                VStack{
                    ZStack{
                        VStack {
                            HStack {
                                Image(systemName: "line.horizontal.3")
                                    .imageScale(.large)
                                    .frame(width: 20)
                                Text("Dresses")
                                    .frame(width: 290,height: 19,alignment: .top)
                                    .font(.system(size: 24,weight: .regular))
                                .padding()
                            }
                            
                            
//                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                
                                LazyVGrid(columns: columns, spacing: 20){
                                    ForEach(productVM.products, id: \.id) {product in
                                        clothCard(product: product)
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
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ZStack {
                        
                        HStack {
                            Text("Arienti")
                                .font(.system(size:35))
                                
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(width: 280)
                            
                            ZStack(alignment: .topTrailing){
                                
                              
                                    
                                    Image(systemName: "cart").imageScale(.large)
                                        .foregroundColor(.lightPink)
                                    .padding(.top, 5)
                                
//                                if numberOfProducts > 0 {
//                                    Text("\(numberOfProducts)")
//                                        .font(.caption2).bold()
//                                        .foregroundColor(.white)
//                                        .frame(width: 15,height: 15)
//                                        .background(Color(.creamPink))
//                                        .cornerRadius(50)
//                                }
                            }
                        }
                    }
                }
        }
        .blur(radius : isSelected ? /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/ : 0)
//        .navigationViewStyle(StackNavigationViewStyle())
        if isSelected{
            ProductDetailsScreen(selectProduct: $selectedProduct, isShowingDetails: .constant(true))
        }

    }
 
        
}

@ViewBuilder func clothCard(product: Product) -> some View {

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

    

#Preview {
    ProductsScreen()
}
