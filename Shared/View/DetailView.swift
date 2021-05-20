//
//  DetailView.swift
//  CoApp (iOS)
//
//  Created by Vik on 21.05.2021.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var coffeeData : Popular!
    @Binding var show: Bool
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                VStack (alignment: .leading, spacing: 5) {
                    Button(action: {
                        
                        withAnimation(.easeOut){show.toggle()}
                    }) {
                        
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    Text("Aristocratic Hand Bag")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    Text(coffeeData.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                }
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                })
            }
            .padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            Spacer(minLength: 0)
        }
        .background(Color("mainColor").ignoresSafeArea(.all,edges: .top))
        .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
