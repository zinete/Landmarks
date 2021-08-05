//
//  SearchItem.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/3.
//

import SwiftUI

struct SearchItem: View {
    var body: some View {
        let landmarks = ModelData().landmarks
        LazyVGrid(
            columns: [GridItem(.adaptive(minimum: 107), spacing: 12)],
            content: {
                ForEach(landmarks) { item in
                    NavigationLink(
                        destination: ImageInfo(imgURL: URL(string: "http://poolga.com/shared/images/poolgas/iphone_2129.jpg")!),
                        
                        label: {
                            
                            item.image
                                .resizable()
                                .frame(height: 107)
                        })
                }
            })
           
        
    }
}

struct SearchItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchItem()
        //            .previewLayout(.fixed(width: 107, height: 107))
    }
}
