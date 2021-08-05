//
//  ContentView.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CustomTabView()
                    .navigationTitle("ZINETE.COM")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






//MARK: Tab
struct CustomTabView : View {
    
    @State var selectedTab = tabs[0]
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            

            TabView(selection: $selectedTab,
                    content:  {
                        Discover()
                            .tag("house.circle")
                        
                        SearchImage()
                            .tag("paperplane.circle")
                        
                        ProfileDetail()
                            .tag("ellipsis.circle")
                    })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .ignoresSafeArea(.all, edges: .bottom)
            
            
            
            
            HStack(spacing: 0) {
                
                ForEach(tabs, id: \.self) { imageName in
                    
                    TabButton(imageName: imageName, selectedTab: $selectedTab)
                    
                    if imageName != tabs.last {
                        
                        Spacer()
                    }
                    
                    
                }
                
            }
            .padding(.horizontal, 25)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(color: Color.gray.opacity(0.25), radius: 5, x: 2, y: 2)
            .shadow(color: Color.gray.opacity(0.25), radius: 5, x: -2, y: -2)
            .padding(.horizontal)
            .padding(.bottom, edge!.bottom == 0 ? 20 : 0)
            
            //无视tab升高
            
            
            
        })
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .background(Color.black.opacity(0.05).ignoresSafeArea(.all))
        
        
    }
    
}


var tabs = ["house.circle", "paperplane.circle", "ellipsis.circle"]


struct TabButton : View {
    
    var imageName : String
    @Binding var selectedTab : String
    
    var body: some View {
        
        Button(action: {
            selectedTab = imageName
        }, label: {
            Image(systemName: imageName)
                .renderingMode(.template)
                .foregroundColor(selectedTab == imageName ? Color.green : Color.black)
                .padding()
                .font(.title)
                
            
        })
        
    }
    
}




