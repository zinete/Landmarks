//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/23.
//

import SwiftUI

struct FavoriteButton: View {
//    当前状态的绑定
    @Binding var isSet: Bool
    var body: some View {
        Button(action: {isSet.toggle()}) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}

