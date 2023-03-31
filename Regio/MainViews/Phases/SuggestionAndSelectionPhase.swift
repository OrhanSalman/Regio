//
//  SelectionView.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import SwiftUI

struct SuggestionAndSelectionTapBar: View {
    
    var body: some View {
        TabView() {
            Group {
                SuggestionAndSelectionPhase()
                    .tabItem {
                        Label("Suggestions", systemImage: "text.badge.checkmark")
                    }
                    .badge(3)
                NearByQuestMap()
                    .tabItem {
                        Label("Near by", systemImage: "number.square")
                    }
                    .badge(1)
                    .ignoresSafeArea()
            }
            .toolbar(.visible , for: .tabBar)
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct SuggestionAndSelectionPhase: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("job_a")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                VStack(spacing: 30) {
                    VStack {
                        Text("App developer training (m/f/d)")
                            .font(.title3.weight(.thin))
                            .scaleEffect(1, anchor: .center)
                        Divider()
                    }
                    VStack {
                        HStack {
                            Text("#Informatik")
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .stroke(.pink, lineWidth: 1)
                                        .scaleEffect(1, anchor: .center)
                                }
                                .font(.callout.weight(.thin))
                                .scaleEffect(1, anchor: .center)
                            Text("#SwiftUI")
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .stroke(.pink, lineWidth: 1)
                                        .scaleEffect(1, anchor: .center)
                                }
                                .font(.callout.weight(.thin))
                                .scaleEffect(1, anchor: .center)
                            Text("#IT")
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .stroke(.pink, lineWidth: 1)
                                        .scaleEffect(1, anchor: .center)
                                }
                                .font(.callout.weight(.thin))
                                .scaleEffect(1, anchor: .center)
                            Text("#MobileApps")
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .stroke(.pink, lineWidth: 1)
                                        .scaleEffect(1, anchor: .center)
                                }
                                .font(.callout.weight(.thin))
                                .scaleEffect(1, anchor: .center)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .clipped()
                        .padding(.horizontal)
                        HStack {
                            Text("#Android")
                                .overlay {
                                    Group {
                                        
                                    }
                                }
                                .font(.callout.weight(.thin))
                                .scaleEffect(1, anchor: .center)
                            Text("#Java")
                                .overlay {
                                    Group {
                                        
                                    }
                                }
                                .font(.callout.weight(.thin))
                                .scaleEffect(1, anchor: .center)
                            Text("#Design")
                                .overlay {
                                    Group {
                                        
                                    }
                                }
                                .font(.callout.weight(.thin))
                                .scaleEffect(1, anchor: .center)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .clipped()
                        .padding(.horizontal)
                    }
                    VStack(spacing: 20) {
                        Text("We are searching for you")
                            .font(.title3.weight(.thin))
                            .scaleEffect(1, anchor: .center)
                        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                            .font(.callout.weight(.thin))
                            .scaleEffect(1, anchor: .center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                    }
                }
                Image("job_b")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                VStack(spacing: 20) {
                    Text("About us")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                        .font(.callout.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                }
                Image("job_c")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                VStack(spacing: 20) {
                    Text("Our Quests")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                        .font(.callout.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                }
                VStack {
                    Divider()
                    HStack {
                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .symbolRenderingMode(.multicolor)
                            .foregroundColor(.yellow)
                            .font(.title)
                    }
                    .padding(10)
                    HStack {
                        Image(systemName: "xmark.octagon.fill")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(.yellow)
                            .font(.title)
                        Spacer()
                        Image(systemName: "heart.fill")
                            .imageScale(.large)
                            .symbolRenderingMode(.multicolor)
                            .font(.title)
                    }
                }
            }
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(.primary.opacity(0))
                    .shadow(color: .secondary.opacity(0.5), radius: 8, x: 0, y: 4)
            }
            .padding(15)
            .padding(.vertical, 20)
        }
    }
}

struct SuggestionAndSelectionPhase_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionAndSelectionPhase()
    }
}
