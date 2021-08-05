//
//  BrowseItem.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/2.
//

import SwiftUI
import SDWebImageSwiftUI

struct BrowseItem: View {
   
    @ObservedObject var newslist = loadlistImg()
    var body: some View {
        LazyVGrid(
            columns: [GridItem(.adaptive(minimum: 159), spacing: 16)],
            spacing: 16
        ) {
            ForEach(newslist.photoArray) { item in
                NavigationLink(
                    destination: ImageInfo(imgURL: item.urls),
                    label: {
                        WebImage(url: item.urls)
                            .resizable()
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            .scaledToFill() //保持宽高比
                            
                            .frame(maxHeight: 350)
                    })
                    .buttonStyle(PlainButtonStyle())
            }
           
        }
        .onAppear(){
            
        }
        .onDisappear() {
            print("onDisappearonDisappear")
        }

    }
    
}

struct BrowseItem_Previews: PreviewProvider {
  
    static var previews: some View {
        BrowseItem()
    }
}
