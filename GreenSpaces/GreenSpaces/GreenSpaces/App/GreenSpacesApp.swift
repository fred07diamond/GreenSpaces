//
//  GreenSpacesApp.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/4/23.
//

import SwiftUI

@main
struct GreenSpacesApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationViewModel)
        }
    }
}
