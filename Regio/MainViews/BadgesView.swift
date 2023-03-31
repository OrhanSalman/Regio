//
//  BadgesView.swift
//  Regio
//
//  Created by Orhan Salman on 23.03.23.
//

import SwiftUI

struct BadgesView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    HStack {
                        Text("Informatics-Master")
                        Spacer()
                        Image(systemName: "medal")
                            .imageScale(.large)
                            .symbolRenderingMode(.multicolor)
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemBrown))
                    }
                    .font(.title3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    Divider()
                        .padding(.horizontal, 20)
                    VStack(spacing: 8) {
                        Text("Solved Quests:")
                            .font(.body.weight(.light))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.leading, 15)
                            .padding(3)
                        HStack {
                            Text("Bug-Fixer")
                                .font(.callout.weight(.thin))
                            Spacer()
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                        }
                        .frame(width: 300)
                        .clipped()
                        HStack {
                            Text("Swift-Left-Swift-Right")
                                .font(.callout.weight(.thin))
                            Spacer()
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star")
                                .symbolRenderingMode(.multicolor)
                        }
                        .frame(width: 300)
                        .clipped()
                        HStack {
                            Text("Clean coder")
                                .font(.callout.weight(.thin))
                            Spacer()
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                        }
                        .frame(width: 300)
                        .clipped()
                        HStack {
                            Text("IT-Architect")
                                .font(.callout.weight(.thin))
                            Spacer()
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star")
                                .symbolRenderingMode(.multicolor)
                        }
                        .frame(width: 300)
                        .clipped()
                    }
                    Divider()
                        .padding(.horizontal, 20)
                }
                .background {
                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                        .fill(Color(.quaternaryLabel).opacity(0.5))
                }
                VStack {
                    HStack {
                        Text("Informatics-Rookie")
                        Spacer()
                        Image(systemName: "medal")
                            .imageScale(.large)
                            .symbolRenderingMode(.multicolor)
                            .font(.largeTitle)
                            .foregroundColor(Color(.systemBrown))
                    }
                    .font(.title3)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    Divider()
                        .padding(.horizontal, 20)
                    VStack(spacing: 8) {
                        Text("Solved Quests:")
                            .font(.body.weight(.light))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.leading, 15)
                            .padding(3)
                        HStack {
                            Text("System-println")
                                .font(.callout.weight(.thin))
                            Spacer()
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                        }
                        .frame(width: 300)
                        .clipped()
                        HStack {
                            Text("If-then")
                                .font(.callout.weight(.thin))
                            Spacer()
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star")
                                .symbolRenderingMode(.multicolor)
                        }
                        .frame(width: 300)
                        .clipped()
                        HStack {
                            Text("Cookie-Monster")
                                .font(.callout.weight(.thin))
                            Spacer()
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Image(systemName: "star")
                                .symbolRenderingMode(.multicolor)
                        }
                        .frame(width: 300)
                        .clipped()
                    }
                    Divider()
                        .padding(.horizontal, 20)
                }
                .background {
                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                        .fill(Color(.quaternaryLabel).opacity(0.5))
                }
            }
        }
    }
}

struct BadgesView_Previews: PreviewProvider {
    static var previews: some View {
        BadgesView()
    }
}
