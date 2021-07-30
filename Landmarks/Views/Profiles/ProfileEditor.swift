//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/29.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    var dataRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    var body: some View {
        List {
            HStack {
                Text("userName").bold()
                Divider()
                TextField("userName", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications){
                Text("Enable Notifications").bold()
            }
            VStack(alignment: .leading){
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/).bold()
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) {season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            DatePicker(selection: $profile.goalDate, in:dataRange, displayedComponents:.date ) {
                Text.init("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
//        创建一个具有不可变值的绑定。
       // eg: profile: .constant(.default)
        ProfileEditor(profile: .constant(.default))
    }
}
