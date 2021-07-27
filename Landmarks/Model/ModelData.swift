//
//  ModelData.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/5.
//

import Foundation
import Combine


//ObservableObject 模型类型
// 创建一个可观察的对象 。如果响应的数据更新。视图也会对应更新
final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
// 筛选出已经精选的
    var features: [Landmark] {
        landmarks.filter {$0.isFavorite}
    }
// 创建一个计算字段、已类别名称为键。关联相关键的地标数组
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
        
    }
}

//加载图片
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("找不到该文件名\(filename)")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("无法加载改文件\(filename)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("无法解析 \(filename) as \(T.self):\n\(error)")
    }
}

