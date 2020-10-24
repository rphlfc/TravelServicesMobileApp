//
//  ContentView.swift
//  TravelServicesMobileApp
//
//  Created by Raphael Cerqueira on 08/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem: Place! = nil
    @State var showDetails = false
    @Namespace var animation
    
    var body: some View {
        ZStack {
            HomeView(selectedItem: $selectedItem, showDetails: $showDetails, animation: animation)
            
            if selectedItem != nil && showDetails {
                DetailsView(selectedItem: $selectedItem, showDetails: $showDetails, animation: animation)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
