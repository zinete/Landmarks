//
//  DiscoverItem.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI
import SDWebImageSwiftUI
struct DiscoverItem: View {
    @ObservedObject var newslist = ApiZphotos()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14){
                ForEach(newslist.bannerArray) { item in
                    NavigationLink(
                        destination: ImageInfo(imgURL: URL(string: item.urls["regular"]!)!),
                        label: {
                            VStack {
                                WebImage(url: URL(string: item.urls["thumb"]!))
                                    .resizable()
                                    .renderingMode(.original)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 345, height: 387)
                                HStack(alignment: .center) {
                                    WebImage(url: URL(string: item.urls["thumb"]!))
                                        .resizable()
                                        
                                        .renderingMode(.original)
                                        .frame(width: 28, height: 28)
                                        .cornerRadius(14)
                                    
                                    VStack(alignment:.leading) {
                                        Text(item.id)
                                            .font(.headline)
                                        Text("@\(item.alt_description)")
                                            .font(.subheadline)
                                            .frame(width:200)
                                           
                                            .lineLimit(nil)
                                    }
                                    Spacer()
                                }
                            }
                        }).buttonStyle(PlainButtonStyle())
                   
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
