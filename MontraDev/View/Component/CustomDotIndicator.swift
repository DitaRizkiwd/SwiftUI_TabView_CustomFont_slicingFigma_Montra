//
//  CustomDotIndicator.swift
//  MontraDev
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct CustomDotIndicator: View {
    var count :Int
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack{
            ForEach(0..<count, id: \.self){
                tab in Circle()
                    .fill(tab == selectedTab ? Color("violet100") : Color("violet20"))
                    .scaleEffect(tab == selectedTab ? 2.0 : 1.0)
                    .frame(width: 8, height: 8)
                    .padding(.horizontal,4)
                    .onTapGesture {
                        selectedTab = tab
                    }
            }
        }
        .animation(.easeOut, value: selectedTab)
    }
}

#Preview {
    @State var selectedTab = 0
    return CustomDotIndicator(count: 3, selectedTab: $selectedTab)
}
