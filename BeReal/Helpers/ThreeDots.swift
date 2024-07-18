//
//  ThreeDots.swift
//  BeReal
//
//  Created by Ehsan Rahimi on 7/17/24.
//

import SwiftUI

struct ThreeDots: View {
    var size: CGFloat
    var color: Color

    var body: some View {
        HStack {
            ForEach(1 ..< 4) { index in
                Image(systemName: "circle.fill")
                    .foregroundStyle(color)
                    .font(.system(size: size))
                    .padding(.leading, index > 1 ? -4 : 0)
            }
        }
    }
}

#Preview {
    ThreeDots(size: 12, color: .black)
}
