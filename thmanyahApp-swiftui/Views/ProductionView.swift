//
//  ProductionView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct ProductionView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            Spacer()
                .frame(height: 15)
            
            Link(destination: URL(string: Links.films.rawValue)!) {
                VStack(spacing: 0) {
                    ImagesBannerView(images: ["img1", "img2", "img3", "img4"], reverse: false, duration: 100)
                    
                    Spacer()
                        .frame(height: 15)
                    
                    ImagesBannerView(images: ["img5", "img6", "img7", "img8"], reverse: true, duration: 80)
                }
            }
            
            
            
            Spacer()
                .frame(height: 40)
            
            Text(production_title)
                .font(.custom("IBMPlexSansArabic-SemiBold", size: 35))
                .foregroundColor(.vermilion)
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 20)
            
            Text(production_description)
                .font(.custom("IBMPlexSansArabic-SemiBold", size: 17))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 80)
        }
        .padding(.horizontal, 32)
        .background(.black)
    }
}

struct ProductionView_Previews: PreviewProvider {
    static var previews: some View {
        ProductionView()
    }
}
