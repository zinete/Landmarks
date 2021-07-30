//
//  CategoryHome.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    var body: some View {
        NavigationView {
            List{
                PageView(pages: modelData.features.map{ FeatureCard(landmark: $0)})
                    .aspectRatio(3 / 2, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .listRowInsets(EdgeInsets())
                
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                   
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            
            .navigationTitle("精选")
            .toolbar {
                Button(action: {showingProfile.toggle() }, label: {
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User profile")
                })
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
            
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
