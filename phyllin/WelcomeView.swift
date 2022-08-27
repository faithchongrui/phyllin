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
    @State private var showLogin = false
    
    var body: some View {

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
                .position(x: 210)
                
                Text("Phyllin")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.5)

               
            }
            .padding(.bottom, 700)
            .position(x: 220, y: 650)
            VStack(alignment: .center) {
                
                Button {
                    print("mg no")
                   showLogin = true
                } label: {
//                        Text("Login")
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                        Text("Login")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .foregroundColor(Colours.evergreen)
                            .minimumScaleFactor(0.5)
                            .padding()
                    }
                }
                .frame(width: getRelativeWidth(350), height: getRelativeHeight(70),
                       alignment: .center)
//                .background(.clear)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
                
                Button {
                    print("mg hi")
                   showSignup = true
                } label: {
                        Text("Sign Up")
                            .font(.system(size: 40))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.5)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.white, lineWidth: 5)
                                    .frame(width: getRelativeWidth(350), height: getRelativeHeight(70),
                                           alignment: .center)
                            )
                    
                }
                .frame(width: getRelativeWidth(350), height: getRelativeHeight(70),
                       alignment: .center)
                .background(.clear)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)

            }
            .position(x: 215, y: 550)
        }
        
        .background(Colours.evergreen)
        .navigate(to: SignUpView(), when: $showSignup)
        .navigate(to: LoginView(), when: $showLogin)
    }
    
}



struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


