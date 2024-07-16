//
//  Feed.swift
//  BeReal
//
//  Created by Ehsan Rahimi on 7/15/24.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            ZStack {
                VStack {
                    VStack {
                        HStack {
                            Image(systemName: "person.2.fill")
                                .foregroundStyle(.white)
                            Spacer()

                            Text("BeReal.")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 22))

                            Spacer()

                            Image(.profile)
                                .resizable()
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                        } //: HStack
                        .padding(.horizontal)
                        HStack {
                            Text("My Friends")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)

                            Text("Discovery")
                                .foregroundStyle(.gray)
                        }
                    } //: VStack
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Feed()
}
