//
//  Discover.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI
import Introspect
struct Discover: View {
    @State var uiTabarController: UITabBarController?
   
  
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                Text("What’s new today")
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                DiscoverItem()
               
                Text("Browse all")
                    .font(.title2)
                    .fontWeight(.bold)
                BrowseItem()
            }.padding()
            
        }
    }
   
    
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}
