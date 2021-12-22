//
//  LandingView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct LandingView: View {
    
    @Binding var showingSideBar: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: { showingSideBar.toggle() }) {
                    Image(systemName: "pause")
                        .font(.system(size: 30, weight:  .medium, design: .default))
                        .rotationEffect(.degrees(90))
                }
                .foregroundColor(.vermilion)
                .padding(.vertical, 25)
                .padding(30)
                Spacer()
            }
            
            Spacer()
                .frame(height: 50)
            
            Image("thmanyah-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 143, height: 90)
            
            Spacer()
                .frame(height: 30)
            
            VStack(spacing: 26) {
                Text(landing_subtitle)
                    .font(.custom("IBMPlexSansArabic-SemiBold", size: 26))
                    .multilineTextAlignment(.center)
                
                Text(landing_description)
                    .font(.custom("IBMPlexSansArabic", size: 18))
                    .multilineTextAlignment(.center)
                
                Link(destination: URL(string: Links.about.rawValue)!) {
                    Text("اقرأ المزيد")
                        .font(.custom("IBMPlexSansArabic-SemiBold", size: 20))
                        .foregroundColor(.vermilion)
                }
            }
            .padding(.horizontal, 50)
            .padding(.bottom, 100)
        }
        .background(Color.bone.edgesIgnoringSafeArea(.all))
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView(showingSideBar: .constant(false))
    }
}
