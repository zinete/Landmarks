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
      
            ScrollView {
                VStack(alignment: .leading) {
//                    TextField("dog", text: $search)
//                        .padding(10)
//                        .frame(height:52)
//                        .border(Color.black, width: 2)
//                        .background(Color(.white))
                    
                    Text("What’s new today")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    SearchItem()
                        .padding(.bottom, 32)
                    Button(action: {}, label: {
                        Spacer()
                        Text("SEE MORE")
                            .fontWeight(.bold)
                            
                        Spacer()
                    })
                    
                    .frame(height: 52)
                    .scaledToFill()
                   
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6.0)
                            .stroke(Color.black, lineWidth: 2)
                    )
                   
                    
                    
                    
                }
                .padding(.top, 20)
                .padding(.horizontal, 16)
                
            }
     
    }
    
}

struct SearchImage_Previews: PreviewProvider {
    static var previews: some View {
        SearchImage()
    }
}
