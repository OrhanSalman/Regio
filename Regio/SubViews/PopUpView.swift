//
//  PopUp.swift
//  Regio
//
//  Created by Orhan Salman on 22.03.23.
//

import SwiftUI

struct PopUpView: View {
    var body: some View {
        ZStack(alignment: .top) {
            VStack(spacing: 10) {
                Text("New Badge received")
                    .font(.title3.weight(.thin))
                LinearGradient(gradient: Gradient(colors: [.mint, .green]), startPoint: .leading, endPoint: .trailing)
                    .frame(height: 10)
                    .clipped()
                HStack {
                    Image(systemName: "medal")
                        .imageScale(.large)
                        .symbolRenderingMode(.multicolor)
                        .font(.title2)
                        .foregroundColor(Color(.systemBrown))
                    Spacer()
                    Text("Informatics-Master")
                        .font(.body.weight(.light))
                }
                .padding(.horizontal, 60)
                .font(.headline.weight(.regular))
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 120)
        .clipped()
        .animation(.easeOut(duration: 0.5))
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView()
    }
}
