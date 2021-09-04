//
//  SideMenu.swift
//  SideSwiftUI
//
//  Created by Apple on 2021/9/3.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var selectedTab:String
    @Namespace var animation
    
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
          Image("Mask Group")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 70, height: 70)
            .cornerRadius(10)
            //padding top for top close button...
            .padding(.top,50)
            
            //头像个人信息设置
            VStack(alignment: .leading, spacing: 6, content: {
                Text("lichunfei")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: {}, label: {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
            })
            // tab 选中button
            // VS spacing纵向间距 alignment:.leading左对齐
            VStack(alignment:.leading, spacing: 10){
                TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "clock.arrow.circlepath", title: "Hostory", selectedTab: $selectedTab, animation: animation)
                 
                TabButton(image: "bell.badge", title: "Notifications", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "gearshape.fill", title: "Setings", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
            }
            //左侧 移动15
            .padding(.leading,-15)
            .padding(.top,50)
            
            Spacer()
            
            //登录button
            VStack(alignment: .leading, spacing: 6, content: {
                TabButton(image:
                            "rectangle.righthalf.inset.fill.arrow.right", title: "Log out", selectedTab: .constant(""), animation: animation)
                    .padding(.leading,-15)
                
                Text("App Version 1.0.34")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.6)
            })
            
        })
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.topLeading)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
