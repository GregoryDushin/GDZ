//
//  GDZ_AppApp.swift
//  GDZ_App
//
//  Created by Григорий Душин on 11.03.2024.
//

import SwiftUI

@main
struct GDZ_AppApp: App {
    var body: some Scene {
        WindowGroup {
            OnboardingCarousel()
        }
    }
}

struct OnboardingCarousel: View {
    @State private var currentPage = 0
    
    var body: some View {
        TabView(selection: $currentPage) {
            Onboarding_1()
                .tag(0)
            Onboarding_2()
                .tag(1)
            Onboarding_3()
                .tag(2)
            Onboarding_4()
                .tag(3)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .edgesIgnoringSafeArea(.all)
    }
}
