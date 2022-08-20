//
//  ContentView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 19/8/22.
//

import SwiftUI

let tealgreen: Color = .init("tealgreen")
let cyanblue: Color = .init("cyanblue")
let evergreen: Color = .init("evergreen")

struct LoginView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    @State var username = ""
    @State var password = ""
    
    
    var body: some View {
        ZStack {
            Image("bgvector")
            VStack(alignment: .center) {
                ZStack {
                    Circle()
                        .frame(width: 200, height: 300)
                        .foregroundColor(evergreen)
                        .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                    Image("logo")
                }
                .position(x: 220)
                
                
                //                                Image("myImage")
                //                                        .clipShape(Circle())
                //                                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Text("login")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.5)
                    .position(x: 220, y: 50)
                
                ZStack {
                    Form {
                        TextField("username", text: $username)
                        TextField("password", text: $password)
                    }

                    .background(Color.clear)
                    .frame(width: 400, height: 150, alignment: .center)
                    .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                    
                    Button {
                        //                                loginScreenViewModel.nextScreen = "HomeScreenView"
                        print("omg hi")
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(.white)
                            .padding()
                            .scaleEffect(1.6)
                        
                            .background(LinearGradient(colors: [.blue, .cyan], startPoint: .leading, endPoint: .trailing))
                            .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                            .cornerRadius(20)
                            .position(x: 350, y: 80)
                        
                    }
                }
                .position(x: 215, y: 120)
            }
            .padding(.bottom, 602.0)
            .position(x: 215, y: 650)
            VStack(alignment: .center) {
                
                Text("or")
                    .font(.system(size: 30))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                
                
                Button {
                    print("omg hi")
                } label: {
                    HStack {
                        Image("ggl")
                        
                        Text("sign in with google")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                            .minimumScaleFactor(0.5)
                    }
                }
                //                                    .hideNavigationBar()
                //                                    .onTapGesture {         loginScreenViewModel.googleSignIn()
                //                                    }
                .padding()
                .frame(width: getRelativeWidth(316.0), height: getRelativeHeight(52.0),
                       alignment: .center)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                
                Button {
                    print("omg no")
                } label: {
                    HStack {
                        Image("fb")
                            .foregroundColor(.white)
                        
                        Text("sign in with facebook")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.5)
                    }

                }
                //                                    .hideNavigationBar()
                //                                    .onTapGesture {         loginScreenViewModel.facebookSignIn()
                //                                    }
                .padding()
                .frame(width: getRelativeWidth(316.0), height: getRelativeHeight(52.0),
                       alignment: .center)
                .background(.blue)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                
                Button {
                    print("mg hi")
                } label: {
                    HStack {
                        Text("sign up")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.5)
                            .padding()
                        
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .scaleEffect(1.6)
                    }
                }
                //                                .onTapGesture {
                //                                    loginScreenViewModel.nextScreen = "SignUpScreenView"
                //                                }
                .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(53.0),
                       alignment: .center)
                
                .background(.teal)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
            }
            .position(x: 190, y: 950)
            //                        }
            //                        .hideNavigationBar()
            
            .position(x: 205, y: 190)
            .padding()
        }
        
        .background(LinearGradient(gradient: Gradient(colors: [tealgreen, cyanblue]),
                                   startPoint: .topLeading, endPoint: .bottomTrailing))
        //                    Group {
        //                        NavigationLink(destination: HomeScreenView(),
        //                                       tag: "HomeScreenView",
        //                                       selection: $loginScreenViewModel.nextScreen,
        //                                       label: {
        //                            EmptyView()
        //                        })
        //                        NavigationLink(destination: SignUpScreenView(),
        //                                       tag: "SignUpScreenView",
        //                                       selection: $loginScreenViewModel.nextScreen,
        //                                       label: {
        //                            EmptyView()
        //                        })
        //                    }
    }
    
}




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



