//
//  DiscoverItem.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI

struct DiscoverItem: View {
    var body: some View {
        VStack {
            Image("discover")
            .resizable()
            .renderingMode(.original)
            .frame(width: 345, height: 387)
            HStack(alignment: .top) {
                Image("discover")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 28, height: 28)
                    .cornerRadius(14)
               
                VStack() {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)

                }
               Spacer()
            }
        }
    }
}

struct DiscoverItem_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverItem()
    }
}
