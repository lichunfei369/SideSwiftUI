//
//  TabButton.swift
//  SideSwiftUI
//
//  Created by Apple on 2021/9/3.
//

import SwiftUI

struct TabButton: View {
    
    var image:String
    var title:String
    
    // Selected Tab
    @Binding var selectedTab: String
    // For Hero Animation Slide ..
    var animation: Namespace.ID
    
    var body: some View {
        
        Button(action: {
            //选中的动画赋值给标题
            withAnimation(.spring()){selectedTab = title}
        }, label: {
            //图文间距
            HStack(spacing:15){
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                    
                Text(title)
                    .fontWeight(.semibold)
                
            }
            .foregroundColor(selectedTab == title ? Color("SideColor") : .white)
            .padding(.vertical,12)
            .padding(.horizontal,10)
            // 最大frame
            .frame(maxWidth: getRect().width - 170 ,alignment: .leading)
            .background(
                ZStack{
                    if selectedTab == title {
                        Color.white
                            .opacity(selectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight,.bottomRight], radius: 12 ))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
