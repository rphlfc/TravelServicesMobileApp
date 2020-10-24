//
//  PopularTravelersView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 24/10/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct PopularTravelersView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular Travelers")
                    .font(.system(size: 24, weight: .bold))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("See all")
                        .font(.system(size: 14, weight: .medium))
                }
            }
            .foregroundColor(Color(#colorLiteral(red: 0.2267932594, green: 0.2379912436, blue: 0.3159617186, alpha: 1)))
            .padding(.top, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    TravelerView(image: "avatar1", name: "Jane Foster", location: "Australia")
                    
                    TravelerView(image: "avatar2", name: "John Smith", location: "Canada")
                    
                    TravelerView(image: "avatar", name: "Jenny Lara", location: "Norway")
                }
            }
        }
    }
}

struct TravelerView: View {
    var image: String
    var name: String
    var location: String
    
    var body: some View {
        Button(action: {
            
        }) {
            ZStack(alignment: .topTrailing) {
                VStack(alignment: .leading) {
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(name)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.4734414816, green: 0.4821135402, blue: 0.5125153661, alpha: 1)))
                    
                    Text(location)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color(#colorLiteral(red: 0.9842278361, green: 0.9843687415, blue: 0.9841969609, alpha: 1)))
                .cornerRadius(20)
                .padding(.top)
                
                VStack(alignment: .leading) {
                    Image(systemName: "heart")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.8103124499, green: 0.2491438687, blue: 0.1370303035, alpha: 1)))
                    
                    Text("2.5K")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.4734414816, green: 0.4821135402, blue: 0.5125153661, alpha: 1)))
                }
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0))
                .padding(.trailing, 8)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct PopularTravelersView_Previews: PreviewProvider {
    static var previews: some View {
        PopularTravelersView()
    }
}
