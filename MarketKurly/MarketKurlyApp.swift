//
//  MarketKurlyApp.swift
//  MarketKurly
//
//  Created by 권석기 on 6/28/25.
//

import SwiftUI

@main
struct MarketKurlyApp: App {
    let container = DIContainer()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(container.homeViewModel)
        }
    }
}
