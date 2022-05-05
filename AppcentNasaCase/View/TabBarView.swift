//
//  TabBarView.swift
//  AppcentNasaCase
//
//  Created by Selin Çağlar on 3.05.2022.
//

import SwiftUI

struct TabBarView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = UIColor(red:0.66, green:0.66, blue:0.66, alpha:0.8 )
        UITabBar.appearance().unselectedItemTintColor = .white
        
    }
    var body: some View {
        
        TabView{
            
            HomePage(pageChoose: .Curiosity )
                .tabItem {
                    Label("Curiosity", systemImage: "camera.fill")
                        .foregroundColor(.black)
                }
            HomePage(pageChoose: .Opportunity)
                .tabItem {
                    Label("Oppotunity", systemImage: "camera.fill")
                        .foregroundColor(.black)
                }
            HomePage(pageChoose: .Spirit)
                .tabItem {
                    Label("Spirit", systemImage: "camera.fill")
                        .foregroundColor(.black)
                }
            
            
                .background(Color(.gray))
                .shadow(radius: 2)
        }
  
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
