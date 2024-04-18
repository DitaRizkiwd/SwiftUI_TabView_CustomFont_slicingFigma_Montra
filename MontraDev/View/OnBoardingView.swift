//
//  OnBoardingView.swift
//  MontraDev
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var selectedTab = 0
    var tabs:[onBoarding] = onBoarding.data
    let dotIndicator = UIPageControl.appearance()
    
    var body: some View {
        VStack{
            TabView(selection: $selectedTab){
                ForEach(tabs) { tab in
                    OnBoardingSingleView(content: tab)
                        .tag(tab.tag)
                }
            }
//            .onAppear{
//                dotIndicator.currentPageIndicatorTintColor = UIColor(named: "violet100")
//                    
//                dotIndicator.pageIndicatorTintColor = UIColor(named: "violet20")
//            }
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeInOut, value: selectedTab)
            
            CustomDotIndicator(count: tabs.count, selectedTab: $selectedTab)
            
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

#Preview {
    OnBoardingView()
}
