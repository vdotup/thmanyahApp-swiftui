//
//  PartnersView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct PartnersView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 150)
            
            Image("partners")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundColor(.primary)
            
            Spacer()
                .frame(height: 70)
            
            Text(partners_title)
                .font(.custom("IBMPlexSansArabic-SemiBold", size: 34))
                .multilineTextAlignment(.center)
                .foregroundColor(.vermilion)
            
            Spacer()
                .frame(height: 30)
            
            Text(partners_description)
                .font(.custom("IBMPlexSansArabic", size: 19))
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 100)
        }
        .padding(.horizontal, 20)
    }
}

struct PartnersView_Previews: PreviewProvider {
    static var previews: some View {
        PartnersView()
            .preferredColorScheme(.dark)
        PartnersView()
            .preferredColorScheme(.light)
    }
}
