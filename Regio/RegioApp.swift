//
//  RegioApp.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import SwiftUI

@main
struct RegioApp: App {
    @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
    @AppStorage("isUserNotOrientatedYet") var isUserNotOrientatedYet: Bool = true
    @AppStorage("badgeReceived") var badgeReceived: Bool = false
    @State var isShowingPopup = false
    
    var body: some Scene {
        WindowGroup {
            if !isUserOnboarded {
                VStack {
                    OnboardingStructure()
                    Divider()
                    Spacer()
                    ZStack(alignment: .topLeading) {
                        withAnimation {
                            Button(action: {
                                isUserOnboarded = true
                            }){
                                Text("Sign Up")
                                    .font(.system(.body, design: .serif))
                                    .padding(.vertical, 12)
                                    .padding(.horizontal, 15)
                                    .background(.green)
                                    .foregroundColor(.primary)
                                    .mask {
                                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                                    }
                                    .padding(.top, 8)
                                    .shadow(color: .white.opacity(1.0), radius: 20, x: 0, y: 5)
                            }
                        }
                    }
                }
            }
            else {
                if isUserNotOrientatedYet {
                    OrientationView(bottomButtonOpacity: 1, bottomButtomDisabled: false)
                }
                else {
                    DiscoveryPhase()
                        .onAppear {
                            if !badgeReceived {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                                    isShowingPopup = true
                                    badgeReceived = true
                                }
                            }
                        }
                        .sheet(isPresented: $isShowingPopup, content: {
                            PopUpView()
                                .presentationDetents([.height(120)])
                                .onAppear {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                        isShowingPopup = false
                                    }
                                }
                        })
                }
            }
        }
    }
}
