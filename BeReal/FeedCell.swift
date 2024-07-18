//
//  FeedCell.swift
//  BeReal
//
//  Created by Ehsan Rahimi on 7/16/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(alignment: .leading) {
                // MARK: - Username

                HStack {
                    Image(.profile)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Ehsan R.")
                            .fontWeight(.semibold)
                            .font(.system(size: 16))

                        Text("Fullerton • 7 hr late")
                            .font(.system(size: 14))
                    }
                    .foregroundStyle(.white)
                }
                .padding(.horizontal)

                // MARK: - Image

                ZStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            VStack(spacing: 16.0) {
                                Image(systemName: "bubble.left.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)

                                Image(systemName: "face.smiling.fill")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)
                            }
                            .padding(.trailing, 20)
                            .padding(.bottom, 100)
                        }
                    }
                    .zIndex(1)

                    VStack {
                        Image(.back)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 20))

                        HStack {
                            Text("Add a comment...")
                                .foregroundStyle(.gray)
                                .fontWeight(.semibold)
                                .padding(.leading, 8)
                            Spacer()
                        }
                    }
                    VStack {
                        HStack {
                            Image(.front)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 160)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 8).stroke(.white, lineWidth: 2)
                                }
                                .padding(.leading)
                            Spacer()
                        }
                        .padding(.top, 18)

                        Spacer()
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 600, alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    FeedCell()
}
