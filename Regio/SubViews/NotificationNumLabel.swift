//
//  NotificationNumLabel.swift
//  Regio
//
//  Created by Orhan Salman on 22.03.23.
//

import SwiftUI

struct NotificationNumLabel: View {
    
    @Binding var digit: Int
    
    var body: some View {
        ZStack {
            Text("\(digit)")
                .foregroundColor(Color.red)
                .font(.subheadline.weight(.regular)).position(CGPoint(x: 35, y: 0))
                
        }
    }
    func numOfDigits() -> Float {
        let numOfDigits = Float(String(digit).count)
        return numOfDigits == 1 ? 1.5 : numOfDigits
    }
}
