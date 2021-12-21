//
//  LandingView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: {}) {
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
                Text(subtitle)
                    .font(.custom("IBMPlexSansArabic-SemiBold", size: 26))
                    .multilineTextAlignment(.center)
                
                Text(description)
                    .font(.custom("IBMPlexSansArabic", size: 18))
                    .multilineTextAlignment(.center)
                
                Button(action: {}) {
                    Text("اقرأ المزيد")
                        .font(.custom("IBMPlexSansArabic-SemiBold", size: 20))
                }
                .foregroundColor(.vermilion)
            }
            .padding(.horizontal, 50)
            .padding(.bottom, 100)
        }
        .background(Color.bone.edgesIgnoringSafeArea(.all))
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
