//
//  SearchImage.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/3.
//

import SwiftUI

struct SearchImage: View {
    
    @State var search: String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    TextField("dog", text: $search)
                        .padding(10)
                        .frame(height:52)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                        .background(Color(.white))
                    
                    Text("ALL RESULTS")
                        .padding(.top, 32)
                        .font(.title3)
                }
                .padding(.top, 20)
                .padding()
                SearchItem()
            }
            .navigationTitle("Search")
            
        }
    }
    
}

struct SearchImage_Previews: PreviewProvider {
    static var previews: some View {
        SearchImage()
    }
}
