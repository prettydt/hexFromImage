//
//  Dtsapplication4App.swift
//  Dtsapplication4

import SwiftUI

@main
struct Dtsapplication4App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
