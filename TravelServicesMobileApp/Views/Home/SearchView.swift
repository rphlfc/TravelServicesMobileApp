//
//  SearchView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 24/10/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
