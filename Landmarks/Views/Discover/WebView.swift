//
//  WebView.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView (
            frame: .zero,
            configuration: config
        )
    }
    func updateUIView(_ uiview: WKWebView, context: Context){
        guard let myURL = url else {
            return
        }
        let request = URLRequest(url: myURL)
        uiview.load(request)
    }
    
}

