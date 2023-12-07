//
//  LocationSerchResultsCell.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/5/23.
//

import SwiftUI

struct LocationSearchResultsCell: View {
    let title: String
    let subtitle: String
    var body: some View {
        HStack {
            Image(systemName: "tree.circle.fill")
                .resizable()
                .foregroundColor(.newGreen)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack (alignment: .leading, spacing: 4){
                Text(title)
                    .font(.custom("Nunito-ExtraBold", size: 18))
                
                Text(subtitle)
                    .font(.custom("Nunito-Regular", size: 14))
                    .opacity(0.6)
                
                Divider()
            }
            .padding(.leading)
        }
        .padding(.leading, 26)
        .padding(.vertical, 8)
        
    }
}

#Preview {
    LocationSearchResultsCell(title: "Newman Park", subtitle: "San Diego, CA")
}
