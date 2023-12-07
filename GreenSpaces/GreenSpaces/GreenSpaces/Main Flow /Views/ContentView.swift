//
//  ContentView.swift
//  GreenSpaces
//
//  Created by Fred Diamond on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    
    var body: some View {
        NavigationView {
            TabView(selection: $pageIndex) {
                ForEach(pages) { page in
                    VStack {
                        Spacer()
                        PageView(page: page)
                        Spacer()
                        if page == pages.last {
                            NavigationLink(destination: MapView(), label: {
                                Text("Get Started 🚀")
                                    .font(Font.custom("Nunito-ExtraBold", size: 16))
                                    .frame(width: 150, height: 42)
                                    .foregroundColor(.white)
                                    .background(Color.newGreen)
                                    .cornerRadius(8)
                            })
                            
                        } else {
                            Button("Next 🚀", action: incrementPage)
                                .font(Font.custom("Nunito-ExtraBold", size: 16))
                                .frame(width: 150, height: 42)
                                .foregroundColor(.white)
                                .background(Color.newGreen)
                                .cornerRadius(8)
                                .padding()
                        }
                        Spacer()
                    }
                    .tag(page.tag)
                }
            }
            .animation(.easeInOut, value: pageIndex)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .gray
            }
        }
    }
    
    
    
    func incrementPage() {
        pageIndex += 1
    }
    
    func goToZero() {
        pageIndex = 0
    }
}

#Preview {
    ContentView()
}
