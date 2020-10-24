//
//  HomeView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 19/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Binding var selectedItem: Place!
    @Binding var showDetails: Bool
    var animation: Namespace.ID
    
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
                
                AllView(selectedItem: $selectedItem, showDetails: $showDetails, animation: animation)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView(selectedItem: .constant(places[0]), showDetails: .constant(false))
//    }
//}
