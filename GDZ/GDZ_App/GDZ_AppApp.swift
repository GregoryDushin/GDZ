//
//  GDZ_AppApp.swift
//  GDZ_App
//
//  Created by Григорий Душин on 11.03.2024.
//

import SwiftUI
import FirebaseCore

@main
struct GDZ_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                OnboardingCarousel()
                ChooseGrade()
            }
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
        .navigationBarHidden(true)
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
