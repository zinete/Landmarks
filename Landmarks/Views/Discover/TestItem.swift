//
//  TestPage.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/30.
//

import SwiftUI

struct TestItem: View {
    var body: some View {
        VStack() {
            HStack() {
                Text("准风的那个33333")
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(32.0)
                    .font(.system(size: 16))
                Spacer()
                HStack(){
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .font(.title3)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                       Image(systemName: "square.and.arrow.up")
                    })
                }
            }
        }
        .padding()
        .background(Color.black)
        
    }
}

struct TestItem_Previews: PreviewProvider {
    static var previews: some View {
        TestItem()
    }
}
