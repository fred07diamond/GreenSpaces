//
//  PageModel.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/4/23.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Hello There!", description: "Welcome to GreenSpaces! Designed to bring people together to collaborate, share ideas, and grow. We hope you enjoy your time and meet some new people.", imageUrl: "Forest", tag: 0)
    
    static var samplePages: [Page] = [
    Page(name: "Hello There!", description: "Welcome to GreenSpaces! Designed to bring people together to collaborate, share ideas, and grow. We hope you enjoy your time and meet some new people.", imageUrl: "Forest", tag: 0),
    Page(name: "Make New Friends!", description: "With GreenSpaces you can make new friends in the fresh air! Studying in nature has ever been easier. Having trouble branching out? Ask a group leader for an ice breaker!", imageUrl: "Rainbow", tag: 1),
    Page(name: "Get Focused!", description: "Learning in nature has been shown to improve productivity. Allow yourself to find your natural environment. We want you to find comfort in others and nature. A new fun way to explore nature.", imageUrl: "Sun", tag: 2)]
}
