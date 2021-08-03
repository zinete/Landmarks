//
//  DiscoverItem.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI
import SDWebImageSwiftUI
struct DiscoverItem: View {
    @State var newslist: [Zphotos] = []
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14){
                ForEach(newslist.prefix(6)) { item in
                    VStack {
                        WebImage(url: item.urls)
                        .resizable()
                        .renderingMode(.original)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 345, height: 387)
                        HStack(alignment: .center) {
                            Image("discover")
                                .resizable()
                                
                                .renderingMode(.original)
                                .frame(width: 28, height: 28)
                                .cornerRadius(14)
                           
                            VStack(alignment:.leading) {
                                Text(item.alt_description)
                                    .font(.headline)
                                Text("@\(item.alt_description)")
                                    .font(.subheadline)
                            }
                           Spacer()
                        }
                    }
                }
            }
            .onAppear() {
                ApiZphotos().getNewLista{(post) in
                    self.newslist = post
                    debugPrint("photo lists")
                }
            }
        }
        
    }
}

struct DiscoverItem_Previews: PreviewProvider {
   
    static var previews: some View {
        DiscoverItem()
    }
}
