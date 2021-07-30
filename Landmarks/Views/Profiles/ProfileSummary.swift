//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/28.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Notifications: \(profile.prefersNotifications ? "on" : "off")" )
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: \(profile.goalDate, style: .date)")
                
                //分割线
                Divider()
                
                VStack(alignment: .leading) {
                    //默认 VStack alignment：.center
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                    ScrollView {
                        HStack {
                            HikeBadge(name: "222")
                            HikeBadge(name: "222")
                                .hueRotation(Angle(degrees: 180))
                            HikeBadge(name: "222")
                                .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
                                .hueRotation(Angle(degrees: 90))
                        }
                        .padding(.bottom)
                    }
                }
                Divider()
                VStack(alignment: .leading) {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                    HikeView(hike: modelData.hikes[0])
                }
                .padding(.bottom)
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
