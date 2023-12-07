//
//  PageView.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/4/23.
//

import SwiftUI

struct PageView: View {
    var page: Page
    
    var body: some View {
        
        VStack(spacing: 20) {
            Image("\(page.imageUrl)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .padding()
            
            Text(page.name)
                .font(Font.custom("Nunito-ExtraBold", size: 32))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("newGreen"))
            
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
                .multilineTextAlignment(.center)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}
