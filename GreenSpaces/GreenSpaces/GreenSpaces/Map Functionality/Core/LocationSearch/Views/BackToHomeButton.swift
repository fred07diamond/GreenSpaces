//
//  BackToHomeButton.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/6/23.
//

import SwiftUI

struct BackToHomeButton: View {
    
    var buttonTitle: String
    
    var body: some View {
        Button {
            
        } label: {
            Text(buttonTitle)
                .frame(width: 300)
                .font(.custom("Nunito-Bold", size: 18))
                .foregroundColor(.white)
                .padding(10)
                .background(Color(.newGreen))
                .cornerRadius(6)
                .padding(.bottom)
            
        }
    }
}

#Preview {
    BackToHomeButton(buttonTitle: "Back to Home")
}
