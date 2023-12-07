//
//  MapView.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/4/23.
//

import SwiftUI

struct MapView: View {
    
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        ZStack (alignment: .bottom){
            ZStack(alignment: .top) {
                MapViewRepresentable(mapState: $mapState)
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                
                if mapState == .searchingForLocation {
                    LocationSearchView(mapState: $mapState)
                } else if mapState == .noInput {
                    LocationSearchActivationView()
                        .padding(.top, 80)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                mapState = .searchingForLocation
                            }
                        }
                }
                
                MapViewActionButton(mapState: $mapState)
                    .padding(.leading)
                    .padding(.top, 15)
            }
            
            if mapState == .locationSelected {
                ParkServicesView()
                    .transition(.move(edge: .bottom))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
#Preview {
    MapView()
}
