//
//  AllView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 19/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct AllView: View {
    @State var selectedIndex = 1
    @Binding var selectedItem: Place!
    @Binding var showDetails: Bool
    var animation: Namespace.ID
    
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
                HStack(spacing: 15) {
                    ForEach(places) { place in
                        PlaceView(place: place, animation: animation)
                            .onTapGesture(count: 1, perform: {
                                withAnimation {
                                    self.selectedItem = place
                                    self.showDetails.toggle()
                                }
                            })
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PlaceView: View {
    var place: Place
    var animation: Namespace.ID
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(place.image)
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 280)
                .cornerRadius(20)
                .matchedGeometryEffect(id: place.id, in: animation)
                
            VStack(alignment: .leading) {
                Text(place.name)
                    .font(.system(size: 18, weight: .medium))
                
                HStack {
                    Image(systemName: "mappin")
                    
                    Text(place.location)
                        .font(.system(size: 16, weight: .semibold))
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .font(.system(size: 12))
                        
                        Text(place.rating)
                            .font(.system(size: 16))
                    }
                    .padding(8)
                    .background(Color(#colorLiteral(red: 0.8060248494, green: 0.2497109771, blue: 0.1435142457, alpha: 1)))
                    .clipShape(Capsule())
                }
            }
            .foregroundColor(.white)
            .padding()
        }
        .frame(width: 220, height: 280)
    }
}

//struct AllView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllView(selectedItem: .constant(places[0]), showDetails: .constant(false))
//    }
//}
