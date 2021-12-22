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
                Link(destination: URL(string: Links.about.rawValue)!) {
                    Text("عن الشركة")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
                
                Link(destination: URL(string: Links.handbook.rawValue)!) {
                    Text("الدستور")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
                
                Link(destination: URL(string: Links.jobs.rawValue)!) {
                    Text("الوظائف")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
                
                Link(destination: URL(string: Links.blog.rawValue)!) {
                    Text("المدونة")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
                
                
            }
            
            HStack(spacing: 20) {
                Link(destination: URL(string: Links.mediaKit.rawValue)!) {
                    Text("مواد تساعد الإعلام")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
                Link(destination: URL(string: Links.visualIdentity.rawValue)!) {
                    Text("الهوية البصرية")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
            }
            
            HStack(spacing: 20) {
                Link(destination: URL(string: Links.privacyPolicy.rawValue)!) {
                    Text("سياسة الخصوصية")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
                Link(destination: URL(string: Links.contact.rawValue)!) {
                    Text("اتصل بنا")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
                Link(destination: URL(string: Links.faq.rawValue)!) {
                    Text("أسئلة متكررة")
                        .font(.custom("IBMPlexSansArabic", size: 18))
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
                .frame(height: 20)
            
            HStack {
                Group {
                    Spacer()
                    Link(destination: URL(string: Links.linkedIn.rawValue)!) {
                        Image("linkedin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                    Link(destination: URL(string: Links.twitter.rawValue)!) {
                        Image("twitter")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                    Link(destination: URL(string: Links.facebook.rawValue)!) {
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                }
                Group {
                    Spacer()
                    Link(destination: URL(string: Links.instagram.rawValue)!) {
                        Image("instagram")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                    Link(destination: URL(string: Links.youtube.rawValue)!) {
                        Image("youtube")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                }
            }
            
            Text(copyrights)
                .font(.custom("IBMPlexSansArabic", size: 13))
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 60)
        .padding(.top, 100)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
