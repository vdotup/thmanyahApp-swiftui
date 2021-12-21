//
//  ProductionView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct ProductionView: View {
    var body: some View {
        VStack {
            Text(production_title)
                .font(.custom("IBMPlexSansArabic-SemiBold", size: 20))
                .foregroundColor(.vermilion)
            
            Text(production_description)
                .font(.custom("IBMPlexSansArabic-SemiBold", size: 20))
                .foregroundColor(.white)
        }
        .background(.black)
    }
}

struct ProductionView_Previews: PreviewProvider {
    static var previews: some View {
        ProductionView()
    }
}
