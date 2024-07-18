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
                ScrollView {
                    VStack {
                        VStack {
                            ZStack {
                                VStack(alignment: .leading) {
                                    Image(.back)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle(cornerRadius: 5))
                                }
                                VStack {
                                    HStack {
                                        Image(.front)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(RoundedRectangle(cornerRadius: 2))
                                            .border(.black)
                                            .frame(width: 20, height: 40)
                                            .padding(.leading, 5)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                            .frame(width: 100)
                        }

                        VStack {
                            Text("Add a caption...")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                            Text("View Comment")
                                .foregroundStyle(.gray)

                            HStack {
                                Text("Fullerton, Ca • 1 hr late")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 12))
                                ThreeDots(size: 3, color: .gray)
                            }
                        }

                        ForEach(1..<8) { _ in
                            FeedCell()
                            
                        }
                    }
                    .padding(.top, 80)
                }

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
                    } //: Uppper User Profile

                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Feed()
}
