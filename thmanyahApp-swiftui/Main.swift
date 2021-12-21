//
//  Main.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 0) {
                LandingView()
                StatsView()
                ProductionView()
                PartnersView()
                FooterView()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
