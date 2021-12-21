//
//  FooterView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("thmanyah-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 101, height: 70)
            
            Spacer()
                .frame(height: 20)
            
            HStack(spacing: 20) {
                Text("عن الشركة")
                    .font(.custom("IBMPlexSansArabic", size: 18))
                Text("الدستور")
                    .font(.custom("IBMPlexSansArabic", size: 18))
                Text("الوظائف")
                    .font(.custom("IBMPlexSansArabic", size: 18))
                Text("المدونة")
                    .font(.custom("IBMPlexSansArabic", size: 18))
            }
            HStack(spacing: 20) {
                Text("مواد تساعد الإعلام")
                    .font(.custom("IBMPlexSansArabic", size: 18))
                Text("الهوية البصرية")
                    .font(.custom("IBMPlexSansArabic", size: 18))
                
            }
            HStack(spacing: 20) {
                Text("سياسة الخصوصية")
                    .font(.custom("IBMPlexSansArabic", size: 18))
                Text("اتصل بنا")
                    .font(.custom("IBMPlexSansArabic", size: 18))
                Text("أسئلة متكررة")
                    .font(.custom("IBMPlexSansArabic", size: 18))
            }
            
            Spacer()
                .frame(height: 20)
            
            HStack {
                Group {
                    Spacer()
                    Image("linkedin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Spacer()
                    Image("twitter")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Spacer()
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                Group {
                    Spacer()
                    Image("instagram")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Spacer()
                    Image("youtube")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Spacer()
                }
            }
            
            Text(copyrights)
                .font(.custom("IBMPlexSansArabic", size: 13))
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 20)
        .padding(.top, 100)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
