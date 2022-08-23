//
//  WelcomeView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 22/8/22.
//

import SwiftUI

struct WelcomeView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    @State private var showSignup = false
    @State private var showHome = false
    
    var body: some View {

//        if showSignup == false {
//            LoginView()
//        } else {
//            SignUpView()
//        }

        ZStack {
            Image("bgvector")
            VStack(alignment: .center) {
                ZStack {
                    Circle()
                        .frame(width: 200, height: 300)
                        .foregroundColor(Colours.evergreen)
                        .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                    Image("logo")
                }
                .position(x: 220)
                
                
                //                                Image("myImage")
                //                                        .clipShape(Circle())
                //                                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                Text("Login")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.5)

               
            }
            .padding(.bottom, 602.0)
            .position(x: 215, y: 650)
            VStack(alignment: .center) {
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
                .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(52.0),
                       alignment: .center)
                .background(.blue)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                
                Button {
                    print("mg hi")
                   showSignup = true
                } label: {
                        Text("sign up")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.5)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.white, lineWidth: 5)
                                    .frame(width: getRelativeWidth(280), height: getRelativeHeight(53.0),
                                           alignment: .center)
                            )
                    
                }
                //                                .onTapGesture {
                //                                    loginScreenViewModel.nextScreen = "SignUpScreenView"
                //                                }
               
                
                .frame(width: getRelativeWidth(280), height: getRelativeHeight(53.0),
                       alignment: .center)
                .background(.clear)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)

            }
            .position(x: 190, y: 950)
            //                        }
            //                        .hideNavigationBar()
            
            .position(x: 205, y: 190)
            .padding()
        }
        
        .background(LinearGradient(gradient: Gradient(colors: [Colours.tealgreen, Colours.cyanblue]),
                                   startPoint: .topLeading, endPoint: .bottomTrailing))
        .navigate(to: SignUpView(), when: $showSignup)
        .navigate(to: HomeView(), when: $showHome)
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



struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}



