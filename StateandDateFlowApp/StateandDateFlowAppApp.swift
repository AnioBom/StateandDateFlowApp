//
//  StateandDateFlowAppApp.swift
//  StateandDateFlowApp
//
//  Created by mac on 10/26/22.
//

import SwiftUI

@main
struct StateandDateFlowAppApp: App {
    @StateObject private var userManager = UserManager()
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
