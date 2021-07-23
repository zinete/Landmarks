//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/20.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group{
        LandmarkRow(landmark: landmarks[0])
//            使用修饰符 previewLayout 设置列表大小
        LandmarkRow(landmark: landmarks[1])
//            使用修饰符 previewLayout 设置列表大
        }
        .previewLayout(.fixed(width: 300, height: 70))
       
    }
}
