//
//  MainPage.swift
//  CoApp (iOS)
//
//  Created by Vik on 19.05.2021.
//

import SwiftUI

struct MainPage: View {
    @Binding var selectedCategory: Category
    var body: some View {
        VStack {
            
            HStack{
                
                Button(action: {}, label: {
                    Image(systemName: "circle.grid.2x2")
                        .font(.title2)
                        .padding(10)
                        .background(Color("mainColor").opacity(0.18))
                        .foregroundColor(Color("mainColor"))
                        .cornerRadius(8)
                })

                Spacer()
                
                Button(action: {}, label: {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .font(.title2)
                        .padding(10)
                        .background(Color.black.opacity(0.08))
                        .foregroundColor(Color("mainColor"))
                        .cornerRadius(8)
                })
            }
            .overlay(
                HStack(spacing: 4){
                    Image("mapmarker")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color("mainColor"))
                    
                    Text("Воронеж, Пр. Революции 56")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            )
            
            .padding()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack(alignment: .leading, spacing: 15){
                    
                    // Top view | верхний баннер
                    
                    HStack(spacing:20){
                        
                        VStack(alignment: .leading , spacing: 10, content: {

                               
                                Text("Вступи в клуб!")
                                    .foregroundColor(Color("mainColor"))
                                    .font(.title)
                                    .fontWeight(.bold)
                            
                            Text("скидка 10% по подписке")
                                .font(.headline)
                            
                            
                            // Button on top view || Кнопка на баннере
                            
                            Button(action: {}, label: {
                                Text("Все бонусы")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical,10)
                                    .padding(.horizontal)
                                    .background(Color("mainColor"))
                                    .cornerRadius(8)
                            })
                        })
                        .padding(.leading)
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                        Image("delivery-man")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getRect().width / 3)
                            
                    }
                    .padding()
                    .background(Color("lightYellow"))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                        // Categories view
                    Text("Категории")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack(spacing: 15){
                            
                            ForEach(categories){category in
                                
                                HStack(spacing: 12){
                                    
                                    Image(category.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 18, height: 18)
                                        .padding(5)
                                        .background(selectedCategory.id == category.id ? Color.white : Color.clear)
                                        .clipShape(Circle())
                                    
                                    Text(category.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(selectedCategory.id == category.id ? .white : .black)
                                }
                                .padding(.vertical,12)
                                .padding(.horizontal)
                                .background(selectedCategory.id == category.id ? Color("mainColor") : Color.gray.opacity(0.15))
                                .clipShape(Capsule())
                                // Shadows | Тени
                                .shadow(color: Color.black.opacity(0.07), radius: 5, x: 5, y: 5)
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        selectedCategory = category
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)

                        
                    })
                    
                    HStack {
                        
                        Text("Популярное")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            
                            HStack(spacing: 6) {
                                
                                Text("Показать все")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("mainColor"))
                                
                                Image(systemName: "chevron.right")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 6)
                                    .background(Color("mainColor"))
                                    .cornerRadius(6)
                                
                                
                            }
                        })
                        
                    }
                    .padding()
                    .padding(.top, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 20) {
                            
                            ForEach(popular_Items){item in
                                
                                PopularItemRowView(item: item)
                            }
                            
                        }
                        .padding()
                        .padding(.leading, 10)
                    })
                }
                .padding(.vertical)
            })
        }
        
        // Light BG color | Цвет задника
        .background(Color.black.opacity(0.03).ignoresSafeArea())
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
