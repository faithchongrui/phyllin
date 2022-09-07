//
//  ProfilePageView.swift
//  phyllin
//
//  Created by Nikola Winata on 7/9/22.
//

import SwiftUI

struct ProfilePageView: View {
    @State var username = "ndgsghdj"
    @State var balance = 0
    var body: some View {
    VStack {
        VStack {
            Text("\(username)")
                .fontWeight(.semibold)
                .font(.system(size: getRelativeFontSize(16)))
                .foregroundColor(Color.white)
                .frame(width: getRelativeWidth(120), height: getRelativeHeight(16))
                .padding()
                
            
            HStack {
                Text("Balance: $\(balance)")
                    .fontWeight(.semibold)
                    .font(.system(size: getRelativeFontSize(30)))
            }
            .frame(width: getRelativeWidth(301), height: getRelativeHeight(99), alignment: .center)
            .background(Color.grey)
            .cornerRadius(32)
        }
        .frame(width: getRelativeWidth(331), height: getRelativeHeight(195), alignment: .center)
        .background(Colours.evergreen)
        .cornerRadius(32)
        Spacer()
            .frame(height: 50)
        VStack {
            
        }
        .frame(width: getRelativeWidth(384), height: getRelativeHeight(522), alignment: .center)
        .background(Colours.evergreen)
        .cornerRadius(32)
        .padding()
        
        }
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}