//
//  Landmark.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/5.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool //是否收藏
    var isFeatured: Bool //是否精选
    
   
//    匹配文件名称加载对应的数据
    var category: Category
     enum Category: String, CaseIterable, Codable {
         case lakes = "Lakes"
         case rivers = "Rivers"
         case mountains = "Mountains"
     }

    
//    读取图像名称
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
//    读取首页精选图片
    var freatureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
//    管理坐标位置信息
    private var coordinates: Coordinates
    
//    计算一个对与 MapKit 框架交互有用的属性。locationCoordinate
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

