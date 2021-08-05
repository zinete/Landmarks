//
//  PhotoList.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/5.
//

import Foundation

struct PhotoList: Identifiable, Decodable {
    let id: String
    var urls: URL
    var alt_description: String
}


class loadlistImg: ObservableObject {
    
    @Published var photoArray: [PhotoList] = []
    init() {
        loadimg()
    }

    func loadimg() {
        let url = URL(string: "https://lang.zinete.com/reptile/photos")
        
        let session = URLSession(configuration: .default)
        session.dataTask(with: url!){ (data, _, err) in
            guard let data = data else {
                return
            }
            do {
                let json = try JSONDecoder().decode([PhotoList].self, from: data)
                for photo in json {
                    DispatchQueue.main.async {
                        self.photoArray.append(photo)
                    }
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
