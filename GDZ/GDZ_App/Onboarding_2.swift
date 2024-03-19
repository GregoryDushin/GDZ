//
//  ContentView.swift
//  GDZ_App
//
//  Created by Григорий Душин on 11.03.2024.
//

import SwiftUI

struct Onboarding_2: View {
    @State private var currentPage = 1
    var body: some View {
        VStack {
            ZStack {
                Image("Background")
                    .resizable()
                    .padding(.top, 0)
                    .padding(.leading, 0)
                    .padding(.trailing, 0)
                    .frame(height: 500)
                    .edgesIgnoringSafeArea(.all)
                
                Image("Book")

                               .resizable()
                               .frame(width: 140, height: 190)
                               .padding(.leading, 0)
                               .padding(.top, 120)
                
                Image("Group_2")
                               .resizable()
                               .frame(width: 120, height: 120)
                               .padding(.top, -100)
                               .padding(.leading, 150)
                
                Image("Group_1")

                               .resizable()
                               .frame(width: 390, height: 130)
                               .padding(.top, -200)
                               .padding(.leading, 80)

                Image("Group_3")

                               .resizable()
                               .frame(width: 150, height: 100)
                               .padding(.leading, -200)
                               .padding(.top, 90)
            }
            Spacer()
            
            VStack {
                Text("Решайте пробные версии")
                    .font(.system(size: 24.0, weight: .bold))
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .frame(width: 315.5, height: 16.5, alignment: .center)
                    .padding(.top, -220)
                    
                Text("Начальная часть каждого решебника доступна совершенно бесплатно, если же вы хотите получить решебник полностью,приобретайте по доступной цене")
                    .font(.system(size: 16.0, weight: .regular))
                    .foregroundColor(Color(red: 56.0 / 255.0, green: 61.0 / 255.0, blue: 61.0 / 255.0))
                    .multilineTextAlignment(.leading)
                    .frame(width: 300.0, height: 150, alignment: .center)
                    .padding(.top, -210)
            }
            
            HStack {
                
                Spacer()
                
                Button(action: {
                    print("Skip_All")
                }) {
                    Text("Пропустить")
                        .foregroundColor(Color(red: 234.0 / 255.0, green: 233.0 / 255.0, blue: 223.0 / 255.0))
                            
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(25)
                }
                .padding()
            }
        }
    }
}

#Preview {
    Onboarding_2()
}

