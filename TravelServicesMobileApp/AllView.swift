//
//  AllView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 19/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct NewView: View {
    @State var selectedIndex = 0
    
    let items = ["All", "New", "Popular", "Top 10"]
    
    var body: some View {
        VStack {
            HStack {
                ForEach(0 ..< self.items.count) { i in
                    HStack {
                        Button(action: {
                            self.selectedIndex = i
                        }) {
                            Text(self.items[i])
                                .foregroundColor(selectedIndex == i ? Color(#colorLiteral(red: 0.7142020464, green: 0.3931647837, blue: 0.3239435554, alpha: 1)) : Color(#colorLiteral(red: 0.2267932594, green: 0.2379912436, blue: 0.3159617186, alpha: 1)))
                        }
                        
                        if i != self.items.count - 1 {
                            Spacer()
                        }
                    }
                }
            }
            .font(.system(size: 22, weight: .medium))
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    NewView(image: "image1", title: "Catherine's\nMonastery", location: "Norway", rating: "4.9")
                    
                    NewView(image: "image2", title: "Metéora\nMonasteries", location: "Switzerland", rating: "4.8")
                }
                .padding(.horizontal)
            }
        }
    }
}
struct AllView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
