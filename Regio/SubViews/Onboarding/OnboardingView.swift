//
//  OnboardingView.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import SwiftUI

struct OnboardingStructure: View {
    
    @StateObject var content = OnboardingContents()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    OnboardingView(textContent: content.ContentsMap)
                    OnboardingView(textContent: content.ContentsOrte)
                    OnboardingView(textContent: content.ContentsStories)
                }
            }
        }
    }
}

struct OnboardingView: View {
    @State var textContent: [String]
    var body: some View {
        VStack {
            VStack(spacing: 4) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.indigo, .pink]), startPoint: .top, endPoint: .bottom)
                        .mask { RoundedRectangle(cornerRadius: 18, style: .continuous) }
                        .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
                    Image(systemName: textContent[0])
                        .imageScale(.large)
                        .symbolRenderingMode(.monochrome)
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.light))
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 3)
                }
                .frame(width: 80, height: 80)
                .clipped()
                .padding(.bottom, 8)
                Text(textContent[1])
                    .font(.title.weight(.regular))
                    .multilineTextAlignment(.center)
                Text(textContent[2])
                    .font(.footnote.weight(.regular))
                    .frame(width: 280)
                    .clipped()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding(.top, 48)
            .padding(.bottom, 32)
            VStack(spacing: 24) {
                HStack {
                    Image(systemName: textContent[3])
                        .foregroundColor(.pink)
                        .font(.title.weight(.regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        Text(textContent[4])
                            .font(.footnote.weight(.regular))
                        Text(textContent[5])
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: textContent[6])
                        .foregroundColor(.pink)
                        .font(.title.weight(.regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        Text(textContent[7])
                            .font(.footnote.weight(.regular))
                        Text(textContent[8])
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: textContent[9])
                        .foregroundColor(.pink)
                        .font(.title.weight(.regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        Text(textContent[10])
                            .font(.footnote.weight(.regular))
                        Text(textContent[11])
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
        }
        .frame(maxWidth: .infinity)
        .clipped()
        .padding(.bottom, 40)
        .padding(.horizontal, 29)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStructure()
    }
}

struct Previews_OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
