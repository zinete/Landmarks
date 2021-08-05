//
//  Login.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI



struct Login: View {
    @State var userName: String
    @State var passWorld: String
    var body: some View {
      
            VStack(alignment: .leading) {
                Text("Log in")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding()
                    
                
                    
                VStack() {
                   
                    TextField("Username", text: $userName)
                        .padding(10)
                        .frame(height:52)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        .background(Color(.systemGray5))
                    SecureField("PassWord", text: $passWorld) {
                        print("password is \($passWorld)")
                    }
                    .padding(10)
                    .frame(height:52)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                    .background(Color(.systemGray5))
                    
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 16)
                
                
                HStack() {
                    Spacer()
                    Text("Log in")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                    
                }
                
                
                
                .frame(height: 52)
                .background(Color.black)
                .cornerRadius(4.0)
                .padding()
                .buttonStyle(PlainButtonStyle())
            }
            
        }
    }


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(userName:"", passWorld: "")
    }
}
