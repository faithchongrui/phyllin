//
//  ContentView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 19/8/22.
//

import SwiftUI
import Firebase

struct LoginView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    @State var email = ""
    @State var password = ""
    @State var userLoggedIn = false
    
    @State private var showSignup = false
    @State private var showHome = false
    
    var body: some View {
        if userLoggedIn {
            HomeView()
        }
        else {
            content
        }
    }
    
    var content: some View {
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
                
                Text("login")
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
                    
                    Button {
                        login()
                        print("omg hi")
                        showHome = true
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
                .onAppear {
                    Auth.auth().addStateDidChangeListener { auth, user in
                        if user != nil {
                            userLoggedIn.toggle()
                        }
                        
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
                    showSignup = true
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
                .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(53.0),
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
        .navigate(to: SignUpView(), when: $showSignup)
        .navigate(to: HomeView(), when: $showHome)
    }
    func login() {
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                if error != nil {
                    print(error!.localizedDescription)
                }
                
            }
        }
}
//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}

