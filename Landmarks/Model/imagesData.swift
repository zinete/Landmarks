//
//  imagesData.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/2.
//

import Foundation
import SwiftUI
import Combine
import Alamofire
import Moya

struct ImagesList: Codable {
    var list: [Post]
}

struct Post: Codable, Identifiable {
    let id: Int
    let avatar: String // image name
    let vip: Bool
    let name: String
    let date: String // yyyy-MM-dd HH:mm:ss
    
    var isFollowed: Bool
    
    let text: String
    let images: [String] // image names
    
    var commentCount: Int
    var likeCount: Int
    var isLiked: Bool
}



struct ImagesModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    //    读取图像名称
    private var imageName: String
    var image: SwiftUI.Image {
        SwiftUI.Image(imageName)
    }
    
    
    func feachImage() {
       
//        AF.request("https://api.unsplash.com/photos?client_id=w_gNiJnIu9GDoaqbXS_CpaZ8JMd-JdQQ-Qa8G_oNRgc").responseDecodable()
        
    }
    
}


final class ImageData: ObservableObject {
    @Published var images: [ImagesModel] = load("landmarkData.json")
  
}

