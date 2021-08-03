//
//  SearchItem.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/3.
//

import SwiftUI

struct SearchItem: View {
    var body: some View {
        HStack {
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 107), spacing: 12)],
                content: {
                    ForEach(0..<10) { item in
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            isActive: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/,
                            label: {
                                
                                Image("discover")
                                    .resizable()
                                    .frame(height: 107)
                            })
                    }
                })
                .padding()
            
            
        }
    }
}

struct SearchItem_Previews: PreviewProvider {
    static var previews: some View {
        SearchItem()
//            .previewLayout(.fixed(width: 107, height: 107))
    }
}
