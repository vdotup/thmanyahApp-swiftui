//
//  SideBarView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 22/12/2021.
//

import SwiftUI

struct SideBarView: View {
    
    @Binding var showingSideBar: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: { showingSideBar.toggle() }) {
                    Image(systemName: "xmark")
                        .font(.system(size: 30, weight:  .medium, design: .default))
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                .foregroundColor(.vermilion)
                Spacer()
            }
            
            Spacer()
                .frame(height: 30)
            
            VStack(alignment: .leading, spacing: 20) {
                ForEach(sideBarItems, id: \.id) { item in
                    Link(destination: URL(string: item.link.rawValue)!) {
                        Text(item.title)
                            .font(.custom("IBMPlexSansArabic-SemiBold", size: 22))
                            .foregroundColor(.vermilion)
                    }
                }
            }
            .padding(.horizontal, 30)
            
            
            Link(destination: URL(string: Links.website.rawValue)!) {
                ZStack {
                    Capsule().stroke(Color.vermilion, lineWidth: 1)
                    Text("الذهاب لموقع ثمانية")
                        .font(.custom("IBMPlexSansArabic", size: 20))
                        .foregroundColor(.vermilion)
                }
                .frame(width: 180, height: 45)
            }
            .padding(.horizontal, 25)
                                     
                                     
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.white)
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView(showingSideBar: .constant(true))
            .preferredColorScheme(.dark)
        SideBarView(showingSideBar: .constant(true))
            .preferredColorScheme(.light)
    }
}
