//
//  OpenUrl.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI
import WebKit
import Introspect
struct OpenUrl: View {
    @State var uiTabarController: UITabBarController?
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://www.zinete.com"))
                .navigationTitle("zinete.com")
                
        }
        
    }
    
    
}

struct OpenUrl_Previews: PreviewProvider {
    static var previews: some View {
        OpenUrl()
    }
}
