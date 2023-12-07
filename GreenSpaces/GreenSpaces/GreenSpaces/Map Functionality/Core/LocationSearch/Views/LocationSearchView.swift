//
//  LocationSearchView.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/5/23.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    var body: some View {
        
        VStack(spacing: 0){
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.veryDarkGreen))
                        .frame(width: 6, height: 6)
                        .opacity(0.6)
                    
                    Rectangle()
                        .fill(Color(.veryDarkGreen))
                        .frame(width: 1, height: 24)
                        .opacity(0.4)
                    
                    Rectangle()
                        .fill(Color(.veryDarkGreen))
                        .frame(width: 6, height: 6)
                }
                
                VStack {
                    TextField("Current Location", text: $startLocationText)
                        .font(.custom("Nunito-Regular", size: 16))
                        .foregroundColor(.black)
                        .padding(.leading, 10)
                        .frame(height: 40)
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(5)
                        .padding(.trailing)
                    
                    TextField("Search for Park", text: $viewModel.queryFragment)
                        .font(.custom("Nunito-Regular", size: 16))
                        .foregroundColor(.black)
                        .padding(.leading, 10)
                        .frame(height: 40)
                        .background(Color(.systemGray4))
                        .cornerRadius(5)
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
            .padding(.top, 90)
            .padding(.bottom, 20)
            
            Divider()
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.results, id: \.self) {
                        result in
                        LocationSearchResultsCell(title: result.title, subtitle: result.subtitle)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    viewModel
                                        .selectLocation(result)
                                    mapState = .locationSelected
                                }
                            }
                    }
                }
            }
            
            
        }
        .background(.white)
    }
}

#Preview {
    LocationSearchView(mapState: .constant(.searchingForLocation))
}
