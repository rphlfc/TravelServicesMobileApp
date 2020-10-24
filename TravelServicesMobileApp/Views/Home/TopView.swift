//
//  TopView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 24/10/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

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

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
