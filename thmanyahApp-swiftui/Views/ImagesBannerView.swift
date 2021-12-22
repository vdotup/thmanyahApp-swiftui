//
//  ImagesBannerView.swift
//  thmanyahApp-swiftui
//
//  Created by Abdurrahman Alfudeghi on 21/12/2021.
//

import SwiftUI

struct ImagesBannerView: View {
    
    var images: [String]
    var reverse: Bool
    var duration: CGFloat
    
    @State private var animate: Bool = false
    
    var startX: CGFloat {
        900
    }
    var endX: CGFloat {
        -136
    }
    
    init(images: [String], reverse: Bool, duration: CGFloat) {
        self.images = []
        self.images.append(contentsOf: images)
        self.images.append(contentsOf: images)
        self.reverse = reverse
        self.duration = duration
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                ForEach(0..<images.count, id: \.self) { i in
                    Image(images[i])
                        .resizable()
                        .frame(width: 244, height: 137)
                        .cornerRadius(8)
                }
            }
            .position(x: reverse ? (animate ? endX : startX) : (animate ? startX : endX), y: 68.5)
        }
        .frame(height: 137)
        .onAppear {
            withAnimation(.linear(duration: duration).repeatForever(autoreverses: false)) {
                animate = true
            }
        }
    }
}

struct ImagesBannerView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ImagesBannerView(images: ["img1", "img2", "img3", "img4"], reverse: false, duration: 2)
            ImagesBannerView(images: ["img5", "img6", "img7", "img8"], reverse: true, duration: 2)
        }
    }
}
