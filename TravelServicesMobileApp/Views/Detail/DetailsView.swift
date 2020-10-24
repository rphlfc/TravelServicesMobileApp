//
//  DetailsView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 19/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    @Binding var selectedItem: Place!
    @Binding var showDetails: Bool
    var animation: Namespace.ID
    
    var body: some View {
        NavigationView {
            ZStack {
                GeometryReader { geo in
                    Image(selectedItem.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width)
                        .edgesIgnoringSafeArea(.all)
                        .matchedGeometryEffect(id: selectedItem.id, in: animation)
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {
                            withAnimation {
                                showDetails.toggle()
                            }
                        }, label: {
                            Image(systemName: "chevron.left")
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                                .background(Color.white)
                                .clipShape(Circle())
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image(systemName: "heart")
                                .frame(width: 40, height: 40)
                                .background(Color(#colorLiteral(red: 0.7969182134, green: 0.2606843412, blue: 0.1490172148, alpha: 1)))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                    }
                    
                    Spacer()
                    
                    Text(selectedItem.name)
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(Color.white)
                    
                    HStack {
                        ForEach(0 ..< 5) { item in
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                        }
                        
                        Text("(2.2K reviews)")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color.white)
                    }
                    .padding(.top)
                    
                    InfoView()
                    
                    Text("The Alpine region of Switzerland, represents a major natural feature of the country and is, along with the Swiss Plateau and the Swiss portion of the Jura Mountains, one of its three main regions.")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color.white)
                        .padding(.top)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .strokeBorder(Color(#colorLiteral(red: 0.7969182134, green: 0.2606843412, blue: 0.1490172148, alpha: 1)), lineWidth: 2)
                            .overlay(
                                Text("$550")
                                    .font(.system(size: 20, weight: .bold))
                            )
                            .frame(height: 50)
                            
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("BOOK NOW")
                                .font(.system(size: 18, weight: .semibold))
                                .frame(width: 240, height: 50)
                                .background(Color(#colorLiteral(red: 0.7969182134, green: 0.2606843412, blue: 0.1490172148, alpha: 1)))
                                .cornerRadius(10)
                        })

                    }
                    .foregroundColor(Color.white)
                    .padding(.top)
                    
                }
                .padding(.horizontal)
            }
            .navigationBarHidden(true)
        }
    }
}

struct InfoView: View {
    let items = [
        ["Max tem", "10º"],
        ["Avg temp", "22º"],
        ["Min temp", "-7º"]
    ]
    
    var body: some View {
        HStack {
            ForEach(0 ..< self.items.count) { i in
                VStack {
                    Text(self.items[i][0])
                        .font(.system(size: 16, weight: .medium))
                    
                    Text(self.items[i][1])
                        .font(.system(size: 24, weight: .bold))
                }
                .foregroundColor(Color.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.white.opacity(0.3), lineWidth: 2))
                
                if i != self.items.count - 1 {
                    Spacer()
                }
            }
        }
        .padding(.top)
    }
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView(selectedItem: .constant(places[0]), showDetails: .constant(true))
//    }
//}
