//
//  NewsData.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/2.
//

import SwiftUI
import SwiftyJSON




struct NewsData:Codable, Identifiable  {
   var id: Int
   var albumId: Int
   var title: String
   var url: String
   var thumbnailUrl: URL

}


class ApiNews {
    func getNewLista(completion:@escaping([NewsData]) -> ())  {
        let url = URL(string: "http://jsonplaceholder.typicode.com/albums/1/photos")!
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let post = try! JSONDecoder().decode([NewsData].self, from: data!)
            
//            let test = try! JSON(data)
           
            //主线程。异步操作
            DispatchQueue.main.async {
                completion(post)
                
//                print("JSON:\(test)")
                
              
            }
           
        }
        .resume()
    }
    
    
   
}
