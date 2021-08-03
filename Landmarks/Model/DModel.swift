//
//  DModel.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/3.
//


import Foundation


struct Zphotos: Identifiable, Codable {
    var id: UUID
    let urls: URL
    let alt_description: String
    
}



class ApiZphotos {
    func getNewLista(completion:@escaping([Zphotos]) -> ())  {
        let url = URL(string: "https://lang.zinete.com/reptile/photos")!
        URLSession.shared.dataTask(with: url) { (data, _, _) in
           
            
            let post = try! JSONDecoder().decode([Zphotos].self, from: data!)
            
//            let test = try! JSON(data)
           
            //主线程。异步操作
            DispatchQueue.main.async {
                completion(post)
                
//                print("JSON:\(post)")
                
              
            }
           
        }
        .resume()
    }
    
    
   
}
