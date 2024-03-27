//
//  Onboarding_1.swift
//  GDZ_App
//
//  Created by Григорий Душин on 11.03.2024.
//

import SwiftUI

struct Onboarding_1: View {
    @State private var currentPage = 0
    @State private var isSkipped = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Background")
                        .resizable()
                        .padding(.top, 0)
                        .padding(.leading, 0)
                        .padding(.trailing, 0)
                        .frame(height: 500)
                        .edgesIgnoringSafeArea(.all)
                    
                    Image("Group_5")
                        .resizable()
                        .frame(width: 140, height: 190)
                        .padding(.leading, 90)
                        .padding(.top, 180)
                    
                    Image("Group_5")
                        .resizable()
                        .frame(width: 140, height: 190)
                        .padding(.leading, -190)
                        .padding(.top, -270)
                    
                    Image("Group_6")
                        .resizable()
                        .frame(width: 140, height: 190)
                        .padding(.leading, 180)
                        .padding(.top, -200)
                    
                    Image("Group_6")
                        .resizable()
                        .frame(width: 140, height: 190)
                        .padding(.leading, -180)
                        .padding(.top, 30)
                }
                Spacer()

                VStack {

                    Text("Еще больше решебников")
                        .font(.system(size: 24.0, weight: .bold))
                        .foregroundColor(.green)
                        .multilineTextAlignment(.leading)
                        .frame(width: 315.5, height: 16.5, alignment: .center)
                        .padding(.top, -200)
                    
                    Text("В нашем магазине вы найдете свыше 600 различных решебников к учебникам для всех классов и предметов!")
                        .font(.system(size: 16.0, weight: .regular))
                        .foregroundColor(Color(red: 56.0 / 255.0, green: 61.0 / 255.0, blue: 61.0 / 255.0))
                        .multilineTextAlignment(.leading)
                        .frame(width: 300.0, height: 150, alignment: .center)
                        .padding(.top, -210)
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        isSkipped = true
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
            .navigationBarHidden(true)
            .background(
                NavigationLink(
                    destination: ChooseGrade(),
                    isActive: $isSkipped,
                    label: {}
                )
                .opacity(0)
            )
        }
    }
}

struct Onboarding_1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_1()
    }
}
