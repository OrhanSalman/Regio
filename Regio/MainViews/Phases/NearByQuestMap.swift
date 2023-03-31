//
//  NearByQuestMap.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let isFav: Bool
    let playableAnywhere: Bool
}

struct MapView: View {
    
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 50.874886, longitude: 8.025132), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    let locations = [
        Location(name: "Oberes Schloss Siegen", coordinate: CLLocationCoordinate2D(latitude: 50.875673, longitude: 8.030228), isFav: true, playableAnywhere: true),
        Location(name: "DRK-Kinderklinik Siegen", coordinate: CLLocationCoordinate2D(latitude: 50.883254, longitude: 8.018782), isFav: false, playableAnywhere: false),
        Location(name: "City-Galerie", coordinate: CLLocationCoordinate2D(latitude: 50.874214, longitude: 8.015020), isFav: false, playableAnywhere: true)
    ]
    
    @State private var selectedLocation: Location? = nil
    
    var body: some View {
        
        Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
            MapAnnotation(coordinate: location.coordinate) {
                Image("logo")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(6)
                    .clipShape(Circle())
                    .overlay(Circle().strokeBorder(AngularGradient(gradient: Gradient(colors: [.red, .purple, .indigo, .green, .mint, .red]), center: .center, startAngle: .zero, endAngle: .degrees(360)), lineWidth: 2))
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        self.selectedLocation = location
                    }
                HStack {
                    Text(location.name).foregroundColor(Color.blue)
                    if location.isFav {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    else {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    }
                }
            }
        }
        .sheet(item: self.$selectedLocation) { location in
            QuestDetailsView(location: location)
        }
        
    }
}

struct QuestDetailsView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .top) {
                    Image("logo")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 390, height: 320)
                        .clipped()
                    HStack {
                        Spacer()
                    }
                    .padding()
                    .padding(.top, 44)
                }
                .frame(width: 390, height: 320)
                .clipped()
                VStack(alignment: .leading, spacing: 4) {
                    HStack(alignment: .firstTextBaseline) {
                        Text("\(location.name)")
                            .font(.system(size: 29, weight: .semibold, design: .default))
                        Spacer()
                        HStack(alignment: .firstTextBaseline, spacing: 3) {
                            Image(systemName: "star.fill")
                                .symbolRenderingMode(.multicolor)
                            Text("4.55")
                                .foregroundColor(.secondary)
                        }
                        .font(.subheadline.weight(.medium))
                    }
                    Text("Hashtags: IT, Swift, App")
                        .font(.callout.weight(.medium))
                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
                        .font(.callout.weight(.light))
                        .padding(.vertical)
                }
                .padding(.horizontal, 24)
                .padding(.top, 12)
                VStack(alignment: .leading, spacing: 15) {
                    Text("HIGHLIGHTS")
                        .kerning(2.0)
                        .font(.system(size: 12, weight: .medium, design: .default))
                        .foregroundColor(.secondary)
                    HStack(spacing: 9) {
                        Image(systemName: "envelope.badge")
                            .symbolRenderingMode(.multicolor)
                            .foregroundColor(.green)
                            .frame(width: 20)
                            .clipped()
                        Text("Training opportunity")
                        Spacer()
                    }
                    .font(.subheadline)
                    if location.playableAnywhere {
                        HStack(spacing: 9) {
                            Image(systemName: "house")
                                .symbolRenderingMode(.multicolor)
                                .foregroundColor(.green)
                                .frame(width: 20)
                                .clipped()
                            Text("Play anywhere")
                            Spacer()
                        }
                        .font(.subheadline)
                    }
                    HStack(spacing: 9) {
                        Image(systemName: "camera")
                            .symbolRenderingMode(.multicolor)
                            .foregroundColor(.green)
                            .frame(width: 20)
                            .clipped()
                        Text("AR Game")
                        Spacer()
                    }
                    .font(.subheadline)
                    HStack(spacing: 9) {
                        Image(systemName: "giftcard")
                            .symbolRenderingMode(.multicolor)
                            .foregroundColor(.green)
                            .frame(width: 20)
                            .clipped()
                        Text("Win voucher")
                        Spacer()
                    }
                    .font(.subheadline)
                }
                .padding(.horizontal, 24)
                VStack(spacing: 14) {
                    HStack(spacing: 4) {
                        Text("Time: ")
                            .font(.headline)
                        Text("15 min")
                    }
                    if location.playableAnywhere {
                        Text("Play")
                            .font(.title3.weight(.medium))
                            .padding(.vertical, 12)
                            .padding(.horizontal, 24)
                            .background(.green)
                            .foregroundColor(.white)
                            .mask {
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                            }
                    }
                    if !location.playableAnywhere {
                        Button(action: {
                            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: self.location.coordinate))
                            mapItem.name = "Destination"
                            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                        }) {
                            Text("Go to location")
                                .font(.title3.weight(.medium))
                                .padding(.vertical, 12)
                                .padding(.horizontal, 24)
                                .background(.green)
                                .foregroundColor(.white)
                                .mask {
                                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                                }
                        }
                    }
                    
                }
                .padding(.vertical, 28)
            }
        }
        .padding()
    }
}


struct NearByQuestMap: View {
    var body: some View {
        MapView()
    }
}

struct NearByQuestMap_Previews: PreviewProvider {
    static var previews: some View {
        NearByQuestMap()
    }
}
