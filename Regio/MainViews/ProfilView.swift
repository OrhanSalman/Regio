//
//  ProfilView.swift
//  Regio
//
//  Created by Orhan Salman on 22.03.23.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        NavigationStack {
            ProfilTapBar()
        }
    }
}

struct ProfilTapBar: View {
    
    var body: some View {
        TabView() {
            Group {
                InitialApplicationPhase()
                    .tabItem {
                        Label("Feedback", systemImage: "text.badge.checkmark")
                    }
                    .badge(3)
                OrientationView(bottomButtonOpacity: 0, bottomButtomDisabled: true)
                    .tabItem {
                        Label("Orientation", systemImage: "number.square")
                    }
                ProgressOverallView()
                    .tabItem {
                        Label("Progress", systemImage: "flag.checkered.2.crossed")
                    }
                    .badge(1)
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

struct ProgressOverallView: View {
    
    @State var showSheet = false
    
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 10) {
                    Text("All")
                        .foregroundColor(.blue)
                    Divider()
                    Text("Recently played")
                    Divider()
                    Text("Best rated")
                    Divider()
                    NavigationLink(destination: {
                        FriendsView()
                    }, label: {
                        Text("Friends")
                    })
                }
                .frame(height: 20)
                .clipped()
            }
            .padding(25)
            Divider()
                .padding(.horizontal, 30)
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Image("logo")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .clipped()
                            Text("Informatik")
                                .font(.title3)
                            Spacer()
                            HStack {
                                Image(systemName: "trophy")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.multicolor)
                                VStack {
                                    Gauge(value: 1) {
                                         Text("Lvl.    3/3")
                                     }
                                    .frame(width: 130)
                                    .clipped()
                                    Text("Hours played: 4")
                                        .fixedSize(horizontal: true, vertical: true)
                                    Text("Quests played: 7")
                                        .fixedSize(horizontal: true, vertical: true)
                                    Text("Badges 2")
                                        .fixedSize(horizontal: true, vertical: true)
                                }
                            }
                        }
                        .padding()
                    }
                    .onTapGesture {
                        showSheet = true
                    }
                    .sheet(isPresented: $showSheet, content: {
                        BadgesView()
                    })
                    .shadow(color: .primary.opacity(0.25), radius: 8, x: 0, y: 4)
                    .background {
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .fill(Color(.systemFill).opacity(0.5))
                    }
                    Divider()
                        .padding(.horizontal, 40)
                    VStack {
                        HStack {
                            Image("logo")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .clipped()
                            Text("Industrie")
                                .font(.title3)
                            Spacer()
                            HStack {
                                Image(systemName: "trophy")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.multicolor)
                                VStack {
                                    Gauge(value: 0.66) {
                                         Text("Lvl.    2/3")
                                     }
                                    .frame(width: 130)
                                    .clipped()
                                    Text("Hours played: 3")
                                        .fixedSize(horizontal: true, vertical: true)
                                    Text("Quests played: 5")
                                        .fixedSize(horizontal: true, vertical: true)
                                    Text("Badges 1")
                                        .fixedSize(horizontal: true, vertical: true)
                                }
                            }
                        }
                        .padding()
                    }
                    .shadow(color: .primary.opacity(0.25), radius: 8, x: 0, y: 4)
                    .background {
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .fill(Color(.systemFill).opacity(0.5))
                    }
                    Divider()
                        .padding(.horizontal, 40)
                    VStack {
                        HStack {
                            Image("logo")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .clipped()
                            Text("Social Work")
                                .font(.title3)
                            Spacer()
                            HStack {
                                Image(systemName: "trophy")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.multicolor)
                                VStack {
                                    Gauge(value: 0.33) {
                                         Text("Lvl.    1/3")
                                     }
                                    .frame(width: 130)
                                    .clipped()
                                    Text("Hours played: 1")
                                        .fixedSize(horizontal: true, vertical: true)
                                    Text("Quests played: 2")
                                        .fixedSize(horizontal: true, vertical: true)
                                    Text("Badges 0")
                                        .fixedSize(horizontal: true, vertical: true)
                                }
                            }
                        }
                        .padding()
                    }
                    .shadow(color: .primary.opacity(0.25), radius: 8, x: 0, y: 4)
                    .background {
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .fill(Color(.systemFill).opacity(0.5))
                    }
                }
            }
            .padding(.top, 14)
        }
    }
}

struct FriendsView: View {
    
    @State var showSheet = false
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    VStack {
                        Text("Informatik")
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.leading)
                        Divider()
                    }
                    .padding(10)
                    ScrollView(.horizontal) {
                        HStack(spacing: 13) {
                            VStack {
                                Image("logo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 170, height: 170)
                                    .clipped()
                                VStack {
                                    HStack(spacing: 50) {
                                        Text("@Mike")
                                        Text("Lvl. 3")
                                    }
                                }
                            }
                            .onTapGesture {
                                showSheet = true
                            }
                            .sheet(isPresented: $showSheet, content: {
                                BadgesView()
                            })
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color(.tertiaryLabel).opacity(0.64))
                                    .scaleEffect(1, anchor: .center)
                            }
                            VStack {
                                Image("logo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 170, height: 170)
                                    .clipped()
                                VStack {
                                    HStack(spacing: 50) {
                                        Text("@Michaela")
                                        Text("Lvl. 3")
                                    }
                                }
                            }
                            .onTapGesture {
                                showSheet = true
                            }
                            .sheet(isPresented: $showSheet, content: {
                                BadgesView()
                            })
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color(.tertiaryLabel).opacity(0.64))
                                    .scaleEffect(1, anchor: .center)
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                }
                VStack {
                    VStack {
                        Text("Industrie")
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.leading)
                        Divider()
                    }
                    .padding(10)
                    ScrollView(.horizontal) {
                        HStack(spacing: 13) {
                            VStack {
                                Image("logo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 170, height: 170)
                                    .clipped()
                                VStack {
                                    HStack(spacing: 50) {
                                        Text("@Sophia")
                                        Text("Lvl. 3")
                                    }
                                }
                            }
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color(.tertiaryLabel).opacity(0.64))
                                    .scaleEffect(1, anchor: .center)
                            }
                            VStack {
                                Image("logo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 170, height: 170)
                                    .clipped()
                                VStack {
                                    HStack(spacing: 50) {
                                        Text("@Greta")
                                        Text("Lvl. 2")
                                    }
                                }
                            }
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color(.tertiaryLabel).opacity(0.64))
                                    .scaleEffect(1, anchor: .center)
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                }
                VStack {
                    VStack {
                        Text("Social Work")
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .padding(.leading)
                        Divider()
                    }
                    .padding(10)
                    ScrollView(.horizontal) {
                        HStack(spacing: 13) {
                            VStack {
                                Image("logo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 170, height: 170)
                                    .clipped()
                                VStack {
                                    HStack(spacing: 50) {
                                        Text("@Timy")
                                        Text("Lvl. 2")
                                    }
                                }
                            }
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color(.tertiaryLabel).opacity(0.64))
                                    .scaleEffect(1, anchor: .center)
                            }
                            VStack {
                                Image("logo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 170, height: 170)
                                    .clipped()
                                VStack {
                                    HStack(spacing: 50) {
                                        Text("@Jens")
                                        Text("Lvl. 1")
                                    }
                                }
                            }
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color(.tertiaryLabel).opacity(0.64))
                                    .scaleEffect(1, anchor: .center)
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                }
            }
        }
        .padding(.vertical, 20)
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
