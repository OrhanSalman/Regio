//
//  InitialApplicationPhase.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import SwiftUI

struct InitialApplicationPhase: View {
    @State var badge_rated = 1
    @State var badge_rejected = 1
    @State var badge__recent = 1
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                VStack(spacing: 10) {
                    Image(systemName: "shield.lefthalf.filled")
                        .imageScale(.large)
                        .symbolRenderingMode(.multicolor)
                        .foregroundColor(.blue)
                    Text("All")
                        .font(.subheadline.weight(.thin))
                        .foregroundColor(.blue)
                }
                Divider()
                    .clipped()
                VStack(spacing: 10) {
                    Image(systemName: "circle.dashed.inset.filled")
                        .imageScale(.large)
                        .symbolRenderingMode(.multicolor)
                        .foregroundColor(.yellow)
                        .overlay(NotificationNumLabel(digit: $badge_rated))
                    Text("Awaiting")
                        .font(.subheadline.weight(.thin))
                }
                Divider()
                VStack(spacing: 10) {
                    Image(systemName: "checkmark.seal.fill")
                        .imageScale(.large)
                        .symbolRenderingMode(.multicolor)
                        .foregroundColor(.green)
                        .overlay(NotificationNumLabel(digit: $badge_rated))
                    Text("Accepted")
                        .font(.subheadline.weight(.thin))
                }
                Divider()
                VStack(spacing: 10) {
                    Image(systemName: "eraser.line.dashed.fill")
                        .imageScale(.large)
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.pink)
                        .overlay(NotificationNumLabel(digit: $badge_rated))
                    Text("Rejected")
                        .font(.subheadline.weight(.thin))
                }
            }
            .padding(.top)
            .frame(height: 90)
            .clipped()
            Divider()
                .padding()
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Text("Hans & Franz GmbH")
                                .font(.headline.weight(.regular))
                            Spacer()
                            Image(systemName: "square.and.arrow.up")
                                .imageScale(.large)
                                .symbolRenderingMode(.multicolor)
                                .foregroundColor(.blue)
                            Spacer()
                            Image(systemName: "checkmark.seal.fill")
                                .imageScale(.large)
                                .symbolRenderingMode(.multicolor)
                                .foregroundColor(.green)
                        }
                        .padding()
                        LinearGradient(gradient: Gradient(colors: [.primary, .green]), startPoint: .leading, endPoint: .trailing)
                            .frame(height: 10)
                            .clipped()
                            .mask { RoundedRectangle(cornerRadius: 20, style: .continuous) }
                            .padding(.horizontal, 5)
                        VStack(spacing: 7) {
                            HStack {
                                Text("1. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "checkmark.circle")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(.green)
                            }
                            .padding(.horizontal, 30)
                            HStack {
                                Text("2. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "checkmark.circle")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(.green)
                            }
                            .padding(.horizontal, 30)
                            HStack {
                                Text("3. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "checkmark.circle")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(.green)
                            }
                            .padding(.horizontal, 30)
                        }
                        Spacer()
                        VStack {
                            Divider()
                            Text("Dear Lorem,")
                                .font(.headline.weight(.light))
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                            ScrollView {
                                VStack(spacing: 20) {
                                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ")
                                        .font(.headline.weight(.thin))
                                        .padding(.horizontal)
                                    Text("Therefore, we would like to invite you to our final level, a two-week internship stay.")
                                        .font(.headline.weight(.bold))
                                        .padding(.horizontal)
                                }
                            }
                        }
                        HStack {
                            Capsule(style: .continuous)
                                .fill(.blue)
                                .overlay {
                                    Text("Yes")
                                        .font(.body.weight(.thin))
                                }
                                .frame(width: 55, height: 30)
                                .clipped()
                            Spacer()
                            Capsule(style: .continuous)
                                .fill(.blue)
                                .overlay {
                                    Text("No")
                                        .font(.body.weight(.thin))
                                }
                                .frame(width: 55, height: 30)
                                .clipped()
                        }
                        .clipped()
                        .padding(.horizontal, 40)
                        .padding(5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 500)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(.systemFill))
                    }
                    .padding()
                    VStack {
                        HStack {
                            Text("Muster & Mann GmbH")
                                .font(.headline.weight(.regular))
                            Spacer()
                            Image(systemName: "eraser.line.dashed.fill")
                                .imageScale(.large)
                                .symbolRenderingMode(.multicolor)
                                .foregroundColor(.pink)
                        }
                        .padding()
                        LinearGradient(gradient: Gradient(colors: [.primary, .pink]), startPoint: .leading, endPoint: .trailing)
                            .frame(height: 10)
                            .clipped()
                            .mask { RoundedRectangle(cornerRadius: 20, style: .continuous) }
                            .padding(.horizontal, 5)
                        VStack(spacing: 7) {
                            HStack {
                                Text("1. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "checkmark.circle")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(.green)
                            }
                            .padding(.horizontal, 30)
                            HStack {
                                Text("2. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "xmark")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.multicolor)
                            }
                            .padding(.horizontal, 30)
                            HStack {
                                Text("3. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Image(systemName: "star.fill")
                                    .imageScale(.small)
                                    .symbolRenderingMode(.multicolor)
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "xmark")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.multicolor)
                            }
                            .padding(.horizontal, 30)
                        }
                        Spacer()
                        VStack {
                            Divider()
                            Text("Dear Lorem,")
                                .font(.headline.weight(.light))
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                            ScrollView {
                                VStack(spacing: 20) {
                                    Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ")
                                        .font(.headline.weight(.thin))
                                        .padding(.horizontal)
                                }
                            }
                        }
                        HStack {
                            Capsule(style: .continuous)
                                .fill(.blue)
                                .overlay {
                                    Text("Yes")
                                        .font(.body.weight(.thin))
                                }
                                .frame(width: 55, height: 30)
                                .clipped()
                            Spacer()
                            Capsule(style: .continuous)
                                .fill(.blue)
                                .overlay {
                                    Text("No")
                                        .font(.body.weight(.thin))
                                }
                                .frame(width: 55, height: 30)
                                .clipped()
                        }
                        .clipped()
                        .padding(.horizontal, 40)
                        .padding(5)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 500)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(.systemFill))
                    }
                    .padding()
                    VStack {
                        HStack {
                            Text("Bat & Man GmbH")
                                .font(.headline.weight(.regular))
                            Spacer()
                            Image(systemName: "circle.dashed.inset.filled")
                                .imageScale(.large)
                                .symbolRenderingMode(.multicolor)
                                .foregroundColor(.yellow)
                        }
                        .padding()
                        LinearGradient(gradient: Gradient(colors: [.primary, .yellow]), startPoint: .leading, endPoint: .trailing)
                            .frame(height: 10)
                            .clipped()
                            .mask { RoundedRectangle(cornerRadius: 20, style: .continuous) }
                            .padding(.horizontal, 5)
                        VStack(spacing: 7) {
                            HStack {
                                Text("1. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Spacer()
                            }
                            .padding(.horizontal, 30)
                            HStack {
                                Text("2. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Spacer()
                            }
                            .padding(.horizontal, 30)
                            HStack {
                                Text("3. Lvl")
                                    .font(.callout.weight(.thin))
                                Spacer()
                                Spacer()
                            }
                            .padding(.horizontal, 30)
                        }
                        Spacer()
                        VStack {
                            Divider()
                            Text("Awaiting Feedback from Company")
                                .font(.headline.weight(.light))
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                            ScrollView {
                                VStack(spacing: 20) {
                                    Text("We are still waiting for the feedback from the company. We will notify you if we have any news. If no feedback has arrived after 00 days, we will send a reminder to the company.")
                                        .font(.headline.weight(.thin))
                                        .padding(.horizontal)
                                }
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 500)
                    .clipped()
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(.systemFill))
                    }
                    .padding()
                }
            }
        }
        .background {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.primary.opacity(0))
        }
    }
}

struct InitialApplicationPhase_Previews: PreviewProvider {
    static var previews: some View {
        InitialApplicationPhase()
    }
}
