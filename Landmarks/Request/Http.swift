//
//  Http.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/2.
//

import Foundation
import Moya

public enum GitHub {
  
    case photos(String)
}

public protocol TargetType {

    /// The target's base `URL`.
    var baseURL: URL { get }

    /// The path to be appended to `baseURL` to form the full `URL`.
    var path: String { get }

    /// The HTTP method used in the request.
    var method: Moya.Method { get }

    /// Provides stub data for use in testing.
    var sampleData: Data { get }

    /// The type of HTTP task to be performed.
    var task: Task { get }

    /// The type of validation to perform on the request. Default is `.none`.
    var validationType: ValidationType { get }

    /// The headers to be used in the request.
    var headers: [String: String]? { get }
}


extension GitHub: TargetType {
    public var baseURL: URL { return URL(string: "https://api.unsplash.com/")! }
        
        // 对应的不同API path
        public var path: String {
            switch self {
            case .photos:
                return "/photos"
            }
        }
        public var method: Moya.Method {
            return .get
        }
        
        // parameters，upload or download
        public var task: Task {
            switch self {
            default:
                return .requestPlain
            }
        }
        
        // 通过statuscode过滤返回内容
        public var validationType: ValidationType {
            switch self {
         
            default:
                return .none
            }
        }
        
        // 多用于单元测试
        public var sampleData: Data {
            switch self {
            case .photos:
                return "Half measures are as bad as nothing at all.".data(using: String.Encoding.utf8)!
            }
        }
        public var headers: [String: String]? {
            return nil
        }
}
