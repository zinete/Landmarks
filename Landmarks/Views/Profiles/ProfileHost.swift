//
//  ProfileHost.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/28.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var darftProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel") {
                        darftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $darftProfile)
                    .onAppear(){
                        darftProfile = modelData.profile
                    }
                    .onDisappear(){
                        modelData.profile = darftProfile
                    }
            }
        }
        .padding()
        .animation(.default)
        
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
