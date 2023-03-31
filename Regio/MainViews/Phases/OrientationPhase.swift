//
//  OrientationView.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import SwiftUI

struct OrientationView: View {
    
    @AppStorage("isUserNotOrientatedYet") var isUserNotOrientatedYet: Bool = true
    @State var bottomButtonOpacity: Double
    @State var bottomButtomDisabled: Bool
    
    var body: some View {
        VStack {
            Text("Profil")
                .font(.title.weight(.thin))
            Spacer()
            HStack {
                Text("What interests you?")
                    .font(.headline.weight(.thin))
                    .padding()
                    .padding(.trailing)
                Spacer()
                Text("7/10")
                    .font(.headline.weight(.thin))
                    .padding()
                    .padding(.trailing)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .clipped()
            Divider()
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.secondary, lineWidth: 1)
                .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(.primary.opacity(0)))
                .frame(height: 40)
                .clipped()
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .foregroundColor(.secondary.opacity(0.5))
                        Text("Informatik")
                            .font(.headline.weight(.thin))
                            .scaleEffect(1, anchor: .center)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                    .padding()
                }
            Spacer()
            VStack(spacing: 8) {
                HStack {
                    Text("#Informatik")
                        .overlay {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.pink, lineWidth: 2)
                                .scaleEffect(1, anchor: .center)
                        }
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Coding")
                        .overlay {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.pink, lineWidth: 2)
                                .scaleEffect(1, anchor: .center)
                        }
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#IT")
                        .overlay {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.pink, lineWidth: 2)
                                .scaleEffect(1, anchor: .center)
                        }
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#MobileApps")
                        .overlay {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.pink, lineWidth: 2)
                                .scaleEffect(1, anchor: .center)
                        }
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                HStack {
                    Text("#SwiftUI")
                        .overlay {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.pink, lineWidth: 2)
                                .scaleEffect(1, anchor: .center)
                        }
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#AR")
                        .overlay {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.pink, lineWidth: 2)
                                .scaleEffect(1, anchor: .center)
                        }
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#XCode")
                        .overlay {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.pink, lineWidth: 2)
                                .scaleEffect(1, anchor: .center)
                        }
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Design")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                HStack {
                    Text("#Consulting")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#HCI")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Robots")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                HStack {
                    Text("#Smart")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Technology")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#.NET")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#VR")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                HStack {
                    Text("#Java")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#C++")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Games")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#WebApp")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                .blur(radius: 1)
                HStack {
                    Text("#Server")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Kotlin")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#SAP")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Projectwork")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                .blur(radius: 2)
                HStack {
                    Text("#SQL")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Linux")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Unity")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#UnrealEngine")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                .blur(radius: 3)
                HStack {
                    Text("#Server")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Apple")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#Android")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#C#")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                .blur(radius: 4)
                HStack {
                    Text("#aaa")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#bbbbbbbb")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#cccc")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#dddd")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                .blur(radius: 5)
                HStack {
                    Text("#aaaaa")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#bbbbbb")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#ccccc")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                    Text("#dddddddd")
                        .font(.title3.weight(.thin))
                        .scaleEffect(1, anchor: .center)
                }
                .blur(radius: 6)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .clipped()
            Spacer()
            Button(action: {
                isUserNotOrientatedYet = false
            }){
                Text("Finish")
                    .font(.system(.body, design: .serif))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 15)
                    .background(.green)
                    .foregroundColor(.black)
                    .mask {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                    }
                    .padding(.top, 8)
                    .shadow(color: .white.opacity(1.0), radius: 20, x: 0, y: 5)
                    .opacity(bottomButtonOpacity)
                    .disabled(bottomButtomDisabled)
            }
        }
        .padding()
    }
}

struct OrientationView_Previews: PreviewProvider {
    static var previews: some View {
        OrientationView(bottomButtonOpacity: 1, bottomButtomDisabled: false)
    }
}
