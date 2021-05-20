//
//  Home.swift
//  CoApp (iOS)
//
//  Created by Vik on 19.05.2021.
//

import SwiftUI

struct Home: View {
    
    // Hidden tab bar
    init() {
        UITabBar.appearance().isHidden = true
    }
    // selected category
    @State var selectedCategory : Category = categories.first!
    @State var selectedTab : String = "home"
    // Trying to add DetailView
    @State var show = false
    @State var selectedItem : Popular!
    
    var body: some View {
        
        // Tab view
        VStack(spacing: 0) {
            TabView{
                
                MainPage(selectedCategory: $selectedCategory)
                    .tag("home")
                
                Color.pink
                    .tag("heart")
                
                Color.yellow
                    .tag("bell")
                
                Color.red
                    .tag("cart")
            }
            
            // Custom tab bar
            CustomTabBar(selectedTab: $selectedTab)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

// Extending view to get screen frame
extension View{
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
