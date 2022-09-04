//
//  SearchView.swift
//  phyllin
//
//  Created by FAITH CHONG RUI EN stu on 3/9/22.
//

import SwiftUI

struct SearchView: View {
    @Binding var text: String
    @State private var isEditing = false
    var body: some View {
        HStack {
            TextField("", text: $text)
                .textInputAutocapitalization(.never)
                .placeholder(when: text.isEmpty, placeholder: {
                    Text("search here").foregroundColor(Colours.tealgreen)
                })
                
                .padding(.horizontal, 40)
                .background(.white)
//                .padding(.top, 30)
//                .padding(.bottom, 30)
                .foregroundColor(.black)
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Colours.tealgreen)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        if isEditing {
                            Button {
                                self.text = ""
                            } label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(Colours.tealgreen)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                ).onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button {
                    self.isEditing = false
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                } label: {
                    Text("cancel")
                        .foregroundColor(.white)
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.linear, value: 10)
            }
        }
        .padding()
        .padding(.horizontal, 10)
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView()
//    }
//}
