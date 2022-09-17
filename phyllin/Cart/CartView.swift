//
//  CartView.swift
//
//
//
//

import SwiftUI

struct CartView: View {
    @State private var showHome = false
    @State var showCheckOut = false
    init(cartProducts: ShoppingCart){
        self.cartProducts = cartProducts
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = UIColor(Color.thing)
        UITableView.appearance().backgroundColor = UIColor(Color.thing)
    }
    @ObservedObject var cartProducts: ShoppingCart
    @State var showDelete: Bool = false
    var body: some View {
        let productsDic = cartProducts.cartProductDic.map({$0.key})
        
        VStack {
            HStack {
                Button {
                    showHome.toggle()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                }
                Text("Cart")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .frame(width: 400, height: 50, alignment: .topLeading)
            .padding()
            .background(Colours.evergreen)
            ZStack {
                Color.thing.edgesIgnoringSafeArea(.all)
                VStack{
                    if !productsDic.isEmpty{
                        HStack{
                            Text("Cart")
                                .font(.title2).bold()
                            Spacer()
                            trailingItem
                                
                        }.padding()
                    }
                    if cartProducts.cartProductDic.isEmpty {
                        CartLoadingView()
                    } else {
                        CartListView(cart: cartProducts, products: cartProducts.cartProductDic, showDelete: $showDelete)
                    }
                    Text("Total: \(String(format: "%.2f", cartProducts.totalPrice))")
                    Button(action: {
                        withAnimation{cartProducts.showShowcaseSheet.toggle()}
                        showCheckOut.toggle()
                    }, label: {
                        HStack {
                            Text("Check out").bold()
                            Image(systemName: "creditcard")
                        }.padding()
                        .foregroundColor(.tertiary)
                    })
                    .background(Color.accentColor)
                    .cornerRadius(12)
                    .padding()
                    .disabled(cartProducts.cartProductDic.isEmpty)
                }.onChange(of: cartProducts.cartProductDic, perform: { value in
                    cartProducts.calculateTotalPrice()
                })
            }.accentColor(.darkText)
                .navigate(to: CheckOutView(product: productsDic, price: cartProducts.totalPrice), when: $showCheckOut)
                .navigate(to: HomeView(), when: $showHome)
    //            .overlay {
    //                if cartProducts.showShowcaseSheet == true {
    //                    CheckOutView(products: productsDic, price: cartProducts.totalPrice).environmentObject(cartProducts)
    //                } else {
    //                    EmptyView()
    //                }
    //
    //            }
            .onAppear {
                showDelete = false
                cartProducts.calculateTotalPrice()
        }
        }
    }
    var trailingItem: some View {
        Button(action:{withAnimation {showDelete.toggle()}}){
            Image(systemName:"slider.horizontal.3")
        }.accentColor(.darkText)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cartProducts: ShoppingCart())
    }
}
