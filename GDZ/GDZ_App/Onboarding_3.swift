//
//  Onboarding_3.swift
//  GDZ_App
//
//  Created by Григорий Душин on 11.03.2024.
//

import SwiftUI

struct Onboarding_3: View {
    @State private var currentPage = 2
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
                
                Image("Group_4")
                               .resizable()
                               .frame(width: 220, height: 250)
                               .padding(.leading, 0)
                               .padding(.top, 40)
                
            }
            Spacer()
            
            VStack {
                Text("Удобный интерфейс")
                    .font(.system(size: 24.0, weight: .bold))
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .frame(width: 315.5, height: 16.5, alignment: .center)
                    .padding(.top, -220)
                    
                Text("Все приобретенные решебники находятся в разделе Мои решебники,также вы можете добавить любой решебник в Избранное")
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
    Onboarding_3()
}
