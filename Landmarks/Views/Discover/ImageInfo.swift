//
//  ImageInfo.swift
//  Landmarks
//
//  Created by zhenghui on 2021/8/3.
//

import SwiftUI
import SDWebImageSwiftUI
import Introspect


struct ImageInfo: View {
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [Color.black.opacity(0.8), Color.black.opacity(0)]),
            startPoint: .top,
            endPoint: .center
        )
    }
    @State var showTips: Bool = true
    @State var showPreview: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var imgURL:URL
    @State var uiTabarController: UITabBarController?
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                WebImage(url: imgURL)
                    .resizable()
                Rectangle().fill(gradient)
                VStack(alignment: .center) {
                    if showPreview {
                        VStack() {
                             Text("18:31")
                                .font(.system(size: 62, weight: Font.Weight.semibold))
                                .padding()
                             Text("08月04日 星期三")
                                .font(.system(size: 28, weight: Font.Weight.semibold, design: Font.Design.default))
                            
                        }
                        .foregroundColor(.white)
                       
                        .padding()
                    }
                   
                    Spacer()
                        
                    if showTips {
                      
                        HStack() {
                            
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                VStack {
                                    Image(systemName: "arrowshape.turn.up.backward")
                                        .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    Text("返回")
                                }
                                .padding(.bottom, 12)
                            })
                            Spacer()
                            Button(action: {
                                withAnimation {
                                    self.showPreview.toggle()
                                }
                            }, label: {
                                VStack {
                                    Image(systemName: "eye")
                                        .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    Text("预览")
                                }
                                .padding(.bottom, 12)
                            })
                            Spacer()
                            Button(action: {
                              
                            }, label: {
                                VStack {
                                    Image(systemName: "square.and.arrow.down")
                                        .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    Text("下载")
                                }
                                .padding(.bottom, 12)
                            })
                        }
                        
                        .padding(32)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: Font.Weight.bold, design: Font.Design.rounded))
                        
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .background(Color.black.opacity(0.6))
                        
                    }
                   
                  
                }
                .padding(.top, 46)
               
                
               
               
            }
            
            
            .onTapGesture {
                withAnimation {
                    self.showTips.toggle()
                }
            }
            .onLongPressGesture {
               
            }
            .introspectTabBarController { (UITabBarController) in
                UITabBarController.tabBar.isHidden = true
                uiTabarController = UITabBarController
            }.onDisappear{
                uiTabarController?.tabBar.isHidden = false
            }
        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ImageInfo_Previews: PreviewProvider {
    static var imgURL = URL(string: "http://poolga.com/shared/images/poolgas/iphone_2151.jpg")!
    static var previews: some View {
        ImageInfo(imgURL: imgURL )
    }
}
