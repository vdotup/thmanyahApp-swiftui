//
//  StatsView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct StatView: View {

    var stat: StatModel
    
    var body: some View {
        
        VStack(spacing: 0) {
            Text(stat.title)
                .font(.custom("IBMPlexSansArabic-SemiBold", size: 50))
            
            Text(stat.subtitle)
                .font(.custom("IBMPlexSansArabic-SemiBold", size: 20))
                .foregroundColor(.vermilion)
                .multilineTextAlignment(.center)
                .frame(height: 60, alignment: .top)
        }
        .frame(height: 135)
    }
}

struct StatsView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 175, maximum: 175)),
        GridItem(.flexible(minimum: 175, maximum: 175))
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
            ForEach(stats) { stat in
                StatView(stat: stat)
            }
        }
        .padding(.top, 100)
        .padding(.bottom, 150)
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
