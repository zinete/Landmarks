//
//  DModel.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/3.
//


import Foundation




struct Zphotos: Identifiable, Decodable {
    var id: String
    let urls: [String: String]
    let alt_description: String
   
}



class ApiZphotos: ObservableObject {
    
    @Published var bannerArray: [Zphotos] = []
    init() {
     loadData()
    }
    
    func loadData(){
//        let key = "w_gNiJnIu9GDoaqbXS_CpaZ8JMd-JdQQ-Qa8G_oNRgc"  // https://unsplash.com/developers
        let url = "https://api.unsplash.com/photos/random/?count=6&client_id=Wv0RsMRZcrJpkkSZF7OgadYOCL8xIm3ueUnSlLAlgVA"
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: url)!) { (data, _, error) in
            guard let data = data else {
                return
            }
            do {
                let json = try JSONDecoder().decode([Zphotos].self, from: data)
                for photo in json {
                    DispatchQueue.main.async {
                        self.bannerArray.append(photo)
                    }
                }
            } catch {
                print("unsplash请求出错:\(error.localizedDescription)")
            }
        }.resume()
        
    }
   
}
