//
//  Main.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct Main: View {
    
    @State var showingSideBar: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 0) {
                    LandingView(showingSideBar: $showingSideBar)
                    StatsView()
                    ProductionView()
                    PartnersView()
                    FooterView()
                }
            }
            .edgesIgnoringSafeArea(.all)
            
            if showingSideBar {
                SideBarView(showingSideBar: $showingSideBar)
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
