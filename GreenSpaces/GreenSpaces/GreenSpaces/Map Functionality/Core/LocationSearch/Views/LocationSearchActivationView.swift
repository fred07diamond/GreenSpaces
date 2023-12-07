//
//  LocationSearchActivationView.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/5/23.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.newGreen)
                .frame(width: 8, height: 8)
                .padding()
            Text("Looking for a park?")
                .foregroundColor(Color.veryDarkGreen)
                .font(Font.custom("Nunito-ExtraBold", size: 16))
                .opacity(0.6)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 64, height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(10)
                .shadow(color: .veryDarkGreen, radius: 8)
        )
    }
}

#Preview {
    LocationSearchActivationView()
}
