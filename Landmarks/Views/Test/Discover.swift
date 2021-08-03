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
    @EnvironmentObject var images: ImageData
    var imageData = ImageData().images

    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Text("What’s new today")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    DiscoverItem()
                    .padding(.bottom, 24)
                    Text("Browse all")
                        .font(.title2)
                        .fontWeight(.bold)
                    BrowseItem()
                }.padding()
                
            }
            
            .navigationTitle("Discover")
        }
    }
   
    
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
            .environmentObject(ImageData())
    }
}
