//
//  Onboarding_4.swift
//  GDZ_App
//
//  Created by Григорий Душин on 11.03.2024.
//

import SwiftUI

struct Onboarding_4: View {
    @State private var currentPage = 3
    var body: some View {
        VStack {
            ZStack {
                
                Image("Group_7")
                    .resizable()
                    .frame(width: 300, height: 150)
                    .padding(.leading, 0)
                    .padding(.top, 100)
                
            }
            Spacer()
            
            VStack {
                Text("Сохранение покупок")
                    .font(.system(size: 24.0, weight: .bold))
                    .foregroundColor(.green)
                    .multilineTextAlignment(.leading)
                    .frame(width: 315.5, height: 16.5, alignment: .center)
                    .padding(.top, -260)
                
                Text("Если вы уже приобрели один или несколько решебников,вы можете восстановить покупки прямо сейчас или сделать это позже в настройках")
                    .font(.system(size: 16.0, weight: .regular))
                    .foregroundColor(Color(red: 56.0 / 255.0, green: 61.0 / 255.0, blue: 61.0 / 255.0))
                    .multilineTextAlignment(.leading)
                    .frame(width: 300.0, height: 150, alignment: .center)
                    .padding(.top, -250)
                
                VStack {
                    Button(action: {
                        print("Skip_All")
                    }) {
                        Text("Восстановить покупки")
                            .foregroundColor(Color(red: 234.0 / 255.0, green: 233.0 / 255.0, blue: 223.0 / 255.0))
                            .padding()
                            .background(Color.green)
                            .cornerRadius(25)
                            .frame(width: 250)
                    }
                    
                    Button(action: {
                        print("Skip_All")
                    }) {
                        Text("Перейти к выбору класса")
                            .foregroundColor(Color(red: 234.0 / 255.0, green: 233.0 / 255.0, blue: 223.0 / 255.0))
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(25)
                            .frame(width: 250)
                    }
                }
            }
            
            HStack {
                
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    Onboarding_4()
}
