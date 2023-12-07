//
//  Buddies.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/6/23.
//

import Foundation


enum Buddies: Int, CaseIterable, Identifiable {
    case JamesMathews
    case LilyMueller
    case MichaelTrent
    // Add a new case here if you want to add buddies for prototype
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case .JamesMathews: return "James Mathews"
        case .LilyMueller: return "Lily Mueller"
        case .MichaelTrent: return "Michael Trent"
        }
    }
    
    var imageName: String {
        switch self {
        case .JamesMathews: return "BuddyImage1"
        case .MichaelTrent: return "BuddyImage2"
        case .LilyMueller: return "BuddyImage3"
        }
    }
}
