//
//  ParkServicesView.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/5/23.
//

import SwiftUI

struct ParkServicesView: View {
    @State private var selectedBuddy: Buddies = .JamesMathews
    @State private var isShowingConfirmation = false
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(Color(.systemGray3))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
            //Trip info view
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.veryDarkGreen))
                        .frame(width: 8, height: 8)
                        .opacity(0.6)
                    
                    Rectangle()
                        .fill(Color(.veryDarkGreen))
                        .frame(width: 1, height: 32)
                        .opacity(0.4)
                    
                    Rectangle()
                        .fill(Color(.veryDarkGreen))
                        .frame(width: 8, height: 8)
                }
                
                VStack (alignment: .leading, spacing: 24){
                    HStack {
                        Text("Current location")
                            .font(.custom("Nunito-SemiBold", size: 16))
                            .foregroundColor(.veryDarkGreen)
                            .opacity(0.6)
                        
                        Spacer()
                        
                        Text("1:30 PM")
                            .font(.custom("Nunito-Regular", size: 16))
                            .foregroundColor(.veryDarkGreen)
                            .opacity(0.6)
                    }
                    .padding(.bottom, 10)
                    
                    HStack {
                        Text("Balboa Park")
                            .font(.custom("Nunito-SemiBold", size: 16))
                            .foregroundColor(.veryDarkGreen)
                        
                        Spacer()
                        
                        Text("1:50 PM")
                            .font(.custom("Nunito-Regular", size: 16))
                            .foregroundColor(.veryDarkGreen)
                    }
                }
            }
            .padding(.leading, 50)
            .padding(.trailing, 50)
            .padding(.top, 20)
            
            Divider()
            
            //Possible Friend tag-along view
            
            Text("INVITE BUDDIES")
                .font(.custom("Nunito-SemiBold", size: 16))
                .padding()
                .foregroundColor(.veryDarkGreen)
                .opacity(0.6)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView(.horizontal) {
                HStack (spacing: 12) {
                    ForEach(Buddies.allCases) { names in
                        VStack(alignment: .center) {
                            Image(names.imageName)
                                .resizable()
                                .scaledToFit()
                    
                            VStack (spacing: 4){
                                Text(names.description)
                                    .font(.custom("Nunito-Regular", size: 16))
                                    .foregroundColor(.veryDarkGreen)
                                
                                Text("Online")
                                    .font(.custom("Nunito-ExtraBold", size: 12))
                                    .foregroundColor(.newGreen)
                            }
                            .padding(8)
                        }
                        .frame(width: 150, height: 150)
                        .foregroundColor(names == selectedBuddy ? .black : .white)
                        .padding(.top)
                        .background(Color(names == selectedBuddy ? .newGreen : .systemGroupedBackground))
                        .scaleEffect(names == selectedBuddy ? 1.2 : 1.0)
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedBuddy = names
                            }
                        }
                    }
                }
            }.padding(.horizontal)
            
            Divider()
            
            //Unique Location Identifier
            HStack(spacing: 12) {
                Text("Check-in Code")
                    .font(.custom("Nunito-SemiBold", size: 12))
                    .padding(6)
                    .background(.newGreen)
                    .cornerRadius(4)
                    .foregroundColor(.white)
                    .padding(.leading)
                
                Text("42779566")
                    .font(.custom("Nunito-Bold", size: 12))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .imageScale(.medium)
                    .padding()
            }
            .frame(height: 50)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            .padding(.horizontal)
            
            
            //Confirm reservation button
            Button {
                isShowingConfirmation.toggle()
            } label: {
                Text("CONFIRM RESERVATION")
                    .font(.custom("Nunito-Bold", size: 18))
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    .background(.newGreen)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
            .sheet(isPresented: $isShowingConfirmation) {
                ConfirmationPageView()
            }

        }
        .padding(.bottom, 40)
        .background(.white)
        .cornerRadius(12)
        
    }
}

#Preview {
    ParkServicesView()
}
