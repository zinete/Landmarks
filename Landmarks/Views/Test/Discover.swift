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
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.title2)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 14){
                            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                DiscoverItem()
                            }
                        }
                    }
                }.padding()
                
            }
            
            .navigationTitle("Discover")
        }
    }
   
    
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}
