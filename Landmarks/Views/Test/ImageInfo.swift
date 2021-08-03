//
//  ImageInfo.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/3.
//

import SwiftUI
import SDWebImageSwiftUI
import Introspect
struct ImageInfo: View {
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [Color.black.opacity(0.8), Color.black.opacity(0)]),
            startPoint: .top,
            endPoint: .center
        )
    }
    @Environment(\.presentationMode) var presentationMode
    var imgURL:URL
    @State var uiTabarController: UITabBarController?
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                WebImage(url: imgURL)
                    .resizable()
                Rectangle().fill(gradient)
                VStack(alignment: .leading) {
                    HStack() {
                        WebImage(url: imgURL)
                            .resizable()
                            .cornerRadius(14.0)
                    
                            .frame(width: 28, height: 28)
                            
                        VStack(alignment: .leading) {
                            Text("312321")
                                .foregroundColor(.white)
                                .font(.title3)
                            Text("@312321")
                                .foregroundColor(.white)
                                .font(.subheadline)
                        }
                        Spacer()
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            print("buttom")
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                                .frame(width: 32, height: 32)
                                .padding(.trailing, -2)
                        })
                        
                    }
                   
                  
                    Spacer()
                }
                .padding(.top, 46)
                .padding(.horizontal, 16)
                
                
            }
            .introspectTabBarController { (UITabBarController) in
                UITabBarController.tabBar.isHidden = true
                uiTabarController = UITabBarController
            }.onDisappear{
                uiTabarController?.tabBar.isHidden = false
            }
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ImageInfo_Previews: PreviewProvider {
    static var imgURL = URL(string: "http://poolga.com/shared/images/poolgas/iphone_2151.jpg")!
    static var previews: some View {
        ImageInfo(imgURL: imgURL )
    }
}
