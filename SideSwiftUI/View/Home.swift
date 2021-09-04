//
//  Home.swift
//  SideSwiftUI
//
//  Created by Apple on 2021/9/3.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    //显示和隐藏tab bar
    init(selectedTab:Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        TabView(selection:$selectedTab){
            
            //View
            homePage()
                .tag("Home")
            History()
                .tag("History")
        
            Setings()
                .tag("Setings")
            Help()
                .tag("Help")
            
            Notifications()
                .tag("Notifications")
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct  homePage:View {
    var body: some View {
        NavigationView {
            
//            Text("Home")
//                .font(.largeTitle)
//                .fontWeight(.heavy)
//                .foregroundColor(.primary)
//                .navigationTitle("Home")
            VStack(alignment: .leading, spacing: 20){
                Image("Mask Group")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 5, content: {
                    
                   Text("健康饮食")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    
                    Text("我一直比较喜欢吃的食物")
                     .font(.callout)
                     .fontWeight(.semibold)
                     .foregroundColor(.gray)
                    
                })
            }
            .navigationTitle("Home")
        }
    }
}


struct  History:View {
    var body: some View {
        NavigationView {
            
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}


struct  Notifications:View {
    var body: some View {
        NavigationView {
            
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct  Setings:View {
    var body: some View {
        NavigationView {
            
            Text("Setings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Setings")
        }
    }
}


struct  Help:View {
    var body: some View {
        NavigationView {
            
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}
