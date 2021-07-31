//
//  loginPage.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI

struct loginPage: View {
    var body: some View {
        NavigationView {
          
            ScrollView {
                
               
                VStack {
                    Login(userName: "", passWorld: "")
                }
            }
            
            
            
            
        }
       
        
    }
}

struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        loginPage()
    }
}
