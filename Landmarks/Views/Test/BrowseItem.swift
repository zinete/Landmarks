//
//  BrowseItem.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/2.
//

import SwiftUI
import SDWebImageSwiftUI
import Alamofire
struct BrowseItem: View {
    var imageData: [ImagesModel]
    var imagesModel: ImagesModel
    var images: [Post] = []
    @State var newslist: [NewsData] = []
    var body: some View {
        LazyVGrid(
            columns: [GridItem(.adaptive(minimum: 159), spacing: 16)],
            spacing: 16
        ) {
            ForEach(newslist) { item in
                WebImage(url: URL(string: "https://i.pixiv.cat/c/600x1200_90/img-master/img/2020/04/26/20/11/43/81081734_p0_master1200.jpg?illustId=81081734&title=%E3%83%8B%E3%83%B3%E3%83%95%E3%82%A3%E3%82%A2%E3%81%A0%E3%81%84%E3%81%99%E3%81%8D%E3%82%AF%E3%83%A9%E3%83%96%282%29&artistId=25633439&artistName=%E3%81%97%E3%81%8A%E3%83%90%E3%82%BF%E3%83%BC+%28%E7%84%A1%E5%A1%A9%29&width=2508&height=3541"))
                    .resizable()
                    .scaledToFill() //保持宽高比
                    .shadow(color: .gray, radius: 4, x: 0.4, y: 0.4)
                    .frame(maxHeight: 350)
                    .onTapGesture {
                        print("图片id\(item.id)")
                    }

            }
           
        }
        .onAppear(){
            ApiNews().getNewLista {(post) in
                self.newslist = post
            }
        }
       
    }
}

struct BrowseItem_Previews: PreviewProvider {
    static var imageData = ImageData().images
    static var previews: some View {
      
        BrowseItem(imageData: imageData, imagesModel: imageData[0])
    }
}
