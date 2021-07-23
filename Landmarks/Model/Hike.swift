//
//  Hike.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/23.
//

import Foundation


struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Double
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        return Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var pace: Range<Double>
        var elevation: Range<Double>
        var heartRate: Range<Double>
    }
}
