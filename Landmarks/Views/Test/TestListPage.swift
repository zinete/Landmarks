//
//  TestListPage.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/31.
//

import SwiftUI

struct TestListPage: View {
    var body: some View {
        NavigationView {
            ScrollView(){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    TestItem()
                }
            }
            .navigationTitle("TestlistPage")
        }
        
        
    }
}

struct TestListPage_Previews: PreviewProvider {
    static var previews: some View {
        TestListPage()
    }
}
