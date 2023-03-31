//
//  DiscoveryPhase.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import SwiftUI
import MapKit

struct DiscoveryPhase: View {
    
    @State var badge__suggestionsAndSelections = 1
    @State var isShowingPopup = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 15) {
                HStack(spacing: 40) {
                    NavigationLink {
                        ProfilView()
                    } label: {
                        Image(systemName: "person")
                            .imageScale(.large)
                            .symbolRenderingMode(.multicolor)
                            .font(.title3)
                            .background {
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(.quaternaryLabel))
                                    .frame(width: 90, height: 60)
                                    .clipped()
                                    .offset(x: -8, y: -2)
                            }
                    }
                    Text("Profil")
                        .font(.title2.weight(.light))
                    Spacer()
                    Text("Jobs")
                        .font(.title2.weight(.light))
                    NavigationLink {
                        SuggestionAndSelectionTapBar()
                    } label: {
                        Image(systemName: "bolt.horizontal.circle")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .font(.title3)
                            .background {
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(.quaternaryLabel))
                                    .frame(width: 90, height: 60)
                                    .clipped()
                                    .offset(x: 8, y: -2)
                            }
                            .overlay(NotificationNumLabel(digit: $badge__suggestionsAndSelections).offset(x: -43, y: 30))
                    }
                }
                .padding()
                .padding(.horizontal, 6)
                ScrollView(showsIndicators: false) {
                    VStack {
                        VStack {
                            Text("Section - Discovery")
                                .font(.title2.weight(.light))
                            Divider()
                            
                            StoryCircles()
                            StoryContents()
                        }
                        Spacer()
                        Divider()
                            .padding(20)
                        VStack {
                            Text("Quest Map")
                                .font(.title2.weight(.light))
                            
                            QuestMap()
                        }
                    }
                    .padding(7)
                }
            }
        }
    }
}

struct Quest: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct QuestMap: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 50.874886, longitude: 8.025132), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    let annotations = [
        Quest(name: "Wiggle Wiggle", coordinate: CLLocationCoordinate2D(latitude: 50.875673, longitude: 8.030228)),
        Quest(name: "Waka waka", coordinate: CLLocationCoordinate2D(latitude: 50.868224, longitude: 8.010081)),
        Quest(name: "Skibidi dop dop yes yes", coordinate: CLLocationCoordinate2D(latitude: 50.883254, longitude: 8.018782)),
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) {
            MapMarker(coordinate: $0.coordinate)
        }
        .frame(height: 300)
        .clipped()
        .disabled(true)
    }
}

struct StoryCircles: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(.primary.opacity(0.1))
            .frame(height: 70)
            .clipped()
            .shadow(color: .indigo.opacity(0.75), radius: 8, x: 10, y: 4)
            .overlay {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(0..<13) { i in
                            Image("logo")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(6)
                                .clipShape(Circle())
                                .overlay(Circle().strokeBorder(AngularGradient(gradient: Gradient(colors: [.red, .purple, .indigo, .green, .mint, .red]), center: .center, startAngle: .zero, endAngle: .degrees(360)), lineWidth: 2))
                                .frame(width: 50, height: 50)
                        }
                    }
                }
                .padding()
            }
    }
}

struct StoryContents: View {
    var body: some View {
        VStack {
            HStack {
                Text("Highlights")
                Spacer()
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.blue)
            }
            .font(Font(UIFont.systemFont(ofSize: 28, weight: .thin, width: .expanded)))
            .frame(maxWidth: .infinity, alignment: .leading)
            .clipped()
            .padding()
            Divider()
            HStack {
                Image("logo")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(0)
                Spacer()
                VStack {
                    Text("Hans & Franz GmbH")
                        .font(Font(UIFont.systemFont(ofSize: 20, weight: .thin, width: .expanded)))
                    Spacer()
                    HStack {
                        Text("Region")
                            .font(.subheadline.weight(.thin))
                        Spacer()
                        Text("Siegen")
                            .font(.subheadline.weight(.thin))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding(.horizontal, 30)
                    HStack {
                        Text("Mitarbeiter")
                            .font(.subheadline.weight(.thin))
                        Spacer()
                        Text("100+")
                            .font(.subheadline.weight(.thin))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding(.horizontal, 30)
                    HStack {
                        Text("Quests")
                            .font(.subheadline.weight(.thin))
                        Spacer()
                        Text("7")
                            .font(.subheadline.weight(.thin))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding(.horizontal, 30)
                    HStack {
                        Text("App Rating")
                            .font(.subheadline.weight(.thin))
                        Spacer()
                        Text("1+")
                            .font(.subheadline.weight(.thin))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding(.horizontal, 30)
                    Spacer()
                }
                .padding(.trailing)
            }
            .frame(maxWidth: .infinity, maxHeight: 150)
            .clipped()
            .padding(.bottom, 24)
            VStack {
                HStack(spacing: 60) {
                    VStack {
                        Image(systemName: "person.2")
                            .imageScale(.large)
                            .symbolRenderingMode(.multicolor)
                        Text("Insights")
                    }
                    .font(.headline.weight(.thin))
                    VStack {
                        Image(systemName: "bolt.heart")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                        Text("Join us")
                    }
                    .font(.headline.weight(.thin))
                    VStack {
                        Image(systemName: "gamecontroller")
                            .imageScale(.large)
                            .symbolRenderingMode(.multicolor)
                        Text("Quests")
                    }
                    .font(.headline.weight(.thin))
                }
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.horizontal, 20)
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color(.systemFill))
            }
            Divider()
            Rectangle()
                .fill(.black)
                .overlay {
                    Image(systemName: "play.circle.fill")
                        .imageScale(.large)
                        .symbolRenderingMode(.hierarchical)
                        .font(.system(size: 30, weight: .regular, design: .default))
                        .foregroundColor(.white)
                }
                .frame(height: 350)
                .clipped()
        }
        .background {
            LinearGradient(gradient: Gradient(colors: [.primary.opacity(0), .cyan.opacity(0.33)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .shadow(color: .secondary.opacity(0.5), radius: 20, x: 10, y: 4)
        }
        .padding(.top)
    }
}

struct DiscoveryPhase_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryPhase()
    }
}
