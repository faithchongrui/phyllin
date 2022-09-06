//
//  SignUpView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 20/8/22.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    @State var email = ""
    @State var password = ""
    
    @State private var showHome = false
    @State private var isEditing = false
    
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
                .position(x: 220)

                Text("Sign Up")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.5)
                    .position(x: 220, y: 50)
                
                ZStack {
                    Form {
                        TextField("email", text: $email)
                            .textInputAutocapitalization(.never)
                        SecureField("password", text: $password)
                            .textInputAutocapitalization(.never)

                    }
                    .background(Color.clear)
                    .frame(width: 400, height: 150, alignment: .center)
                    .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
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
                    register()
//                    showHome = true
                } label: {
                    HStack {
                        Text("create account")
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

                .frame(width: getRelativeWidth(316.0), height: getRelativeHeight(52.0),
                       alignment: .center)
                .background(.teal)
                .cornerRadius(20)
                .shadow(color: .init(red: 0.1, green: 0.1, blue: 0.1, opacity: 0.4), radius: 4, x: 0, y: 5)
            }
            .position(x: 190, y: 950)
            .position(x: 205, y: 190)
            .padding()
        }
        
        .background(LinearGradient(gradient: Gradient(colors: [Colours.tealgreen, Colours.cyanblue]),
                                   startPoint: .topLeading, endPoint: .bottomTrailing))
        .navigate(to: HomeView(), when: $showHome)
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
            
        }
    }
    
}




struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}



