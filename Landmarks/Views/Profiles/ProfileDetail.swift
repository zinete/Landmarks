//
//  ProfileDetail.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/4.
//

import SwiftUI

struct ProfileDetail: View {
    var body: some View {
        VStack(alignment: .center) {
            
            Badge()
                .frame(width: 400, height: 400)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 200, height: 200)
            Text("Zhenghui")
                .font(.title)
            Text("blog.zinete.com")
                .font(.title3)
           
            VStack(alignment: .leading) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack(alignment: .center){
                            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                           
                            Spacer()
                            Image(systemName: "hand.thumbsup")
                            
                        }
                        .frame(maxWidth: .infinity)
                    })
                    .padding()
                    .background(Color.black)
                    .cornerRadius(4)
                    .foregroundColor(.white)
                }
                
                
            }
            .padding(.top, 32)
         
            Spacer()
        }
        .padding()
    }
}

struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}
