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
            HStack(alignment: .center) {
                Image("discover")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 28, height: 28)
                    .cornerRadius(14)
               
                VStack(alignment:.leading) {
                    Text("Zheng hui")
                        .font(.headline)
                    Text("@www.zinete.com")
                        .font(.subheadline)
                }
               Spacer()
            }
        }
    }
}

struct DiscoverItem_Previews: PreviewProvider {
    var landmark: Landmark
    static var previews: some View {
        DiscoverItem()
    }
}
