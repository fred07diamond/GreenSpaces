//
//  ConfirmationPageView.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/6/23.
//

import SwiftUI

struct ConfirmationPageView: View {
    var body: some View {
        VStack {
            Text("Confirmed!")
                .font(.custom("Nunito-ExtraBold", size: 45))
                .foregroundColor(.newGreen)
                .padding(.top)
            
            Image ("QRCode")
                .resizable()
                .frame(width: 236, height: 236)
                .padding(.bottom, 5)
            
            Text("Scan QR")
                .font(.custom("Nunito-semiBold", size: 32))
                .padding(.bottom, 1)
            
            Text("Show this code to your group QR to your group leader to verify and check into your group.")
                .font(.custom("Nunito-Medium", size: 20))
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                BackToHomeButton(buttonTitle: "Back to Home")
                
            }
        }
    }
}

#Preview {
    ConfirmationPageView()
}
