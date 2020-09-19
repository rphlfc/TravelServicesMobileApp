//
//  HomeView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 19/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    TopView()
                    
                    Text("Let's enjoy\nyour trip!")
                        .font(.system(size: 40, weight: .semibold))
                        .padding(.top)
                    
                    SearchView()
                    
                    PopularTravelersView()
                }
                .padding(.horizontal, 20)
                
                AllView()
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct TopView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                VStack(alignment: .leading, spacing: 4) {
                    Capsule()
                        .fill(Color(#colorLiteral(red: 0.07057782263, green: 0.07059488446, blue: 0.07057408243, alpha: 1)))
                        .frame(width: 20, height: 4)
                    
                    Capsule()
                        .fill(Color(#colorLiteral(red: 0.6189963818, green: 0.3823130727, blue: 0.3338587582, alpha: 1)))
                        .frame(width: 30, height: 4)
                    
                    Capsule()
                        .fill(Color(#colorLiteral(red: 0.07057782263, green: 0.07059488446, blue: 0.07057408243, alpha: 1)))
                        .frame(width: 20, height: 4)
                }
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image("avatar1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct SearchView: View {
    @State var search = ""
    
    var body: some View {
        HStack {
            TextField("Search your destination", text: self.$search)
                .padding(.leading)
                .frame(height: 50)
            
            Button(action: {
                
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 32))
                    .frame(width: 70, height: 70)
                    .foregroundColor(Color.white.opacity(0.7))
                    .background(Color(#colorLiteral(red: 0.8103124499, green: 0.2491438687, blue: 0.1370303035, alpha: 1)))
                    .cornerRadius(10)
            }
        }
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(#colorLiteral(red: 0.9842278361, green: 0.9843687415, blue: 0.9841969609, alpha: 1))))
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

struct NewView: View {
    var image: String
    var title: String
    var location: String
    var rating: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 280)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 18, weight: .medium))
                
                HStack {
                    Image(systemName: "mappin")
                    
                    Text(location)
                        .font(.system(size: 16, weight: .semibold))
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .font(.system(size: 12))
                        
                        Text(rating)
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
        .frame(width: 200, height: 280)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
