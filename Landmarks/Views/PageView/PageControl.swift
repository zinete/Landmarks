//
//  PageControl.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/29.
//

import SwiftUI
import UIKit


struct PageControl: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    var numberofPages: Int
    @Binding var currentPage : Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberofPages
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged
        )
        return control
    }
    
    func updateUIView(_ uiView:UIPageControl, context: Context)  {
        uiView.currentPage = currentPage
        
    }
    class Coordinator: NSObject {
        var control: PageControl
        init(_ control: PageControl) {
            self.control = control
        }
        
        @objc
        func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
  
}
