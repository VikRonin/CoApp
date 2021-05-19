//
//  PopularItemRowView.swift
//  CoApp (iOS)
//
//  Created by Vik on 19.05.2021.
//

import SwiftUI

struct PopularItemRowView: View {
    var item: Popular
    var body: some View {
        
        VStack(spacing: 8) {
            
            Image(systemName: "flame")
                .font(.footnote)
                .foregroundColor(.red)
                .padding(8)
                .background(Color.orange.opacity(0.15))
                .clipShape(Circle())
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(-10)
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: getRect().width / 3)
                .padding(.top, 6)
            
            Text(item.title)
                .fontWeight(.bold)
            
            Text(item.description)
                .font(.footnote)
                .foregroundColor(.gray)
            
            (
                Text(item.price)
                .font(.title2)
                .foregroundColor(.black)
                +
                Text(" ₽")
                    .font(.title3)
                    .foregroundColor(Color("mainColor"))
            )
            .fontWeight(.bold)
            .padding(.top, 8)
        }
        .padding(.horizontal, 30)
        .padding(.vertical)
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5, y: 5)
    }
}

struct PopularItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
