//
//  Contents.swift
//  Regio
//
//  Created by Orhan Salman on 20.03.23.
//

import Foundation

final class OnboardingContents: ObservableObject {
    
    @Published var ContentsMap: [String] = [
        "map",
        "Discover jobs in your region",
        "Explore your region and the multitude of opportunities it has to offer",
        "mappin.and.ellipse",
        "Trainings",
        "Solve quests and receive an invitation from companies that match your preferences",
        "sparkle.magnifyingglass",
        "Get insights into companies in advance",
        "Discover insider insights into companies and their employment opportunities",
        "arrowshape.turn.up.left.2.fill",
        "Navigation",
        "Find your favorite quest and get navigated there directly"
    ]
    @Published var ContentsOrte: [String] = [
        "building.2.crop.circle",
        "The most important in detail",
        "Smart functions for perfect matching",
        "binoculars.fill",
        "Skill based matches",
        "Training opportunities tailored to you are waiting",
        "star.fill",
        "Be rewarded for playing fun",
        "Receive awards for special achievements or winnings that you can redeem on your next purchase",
        "bell.fill",
        "Get notified",
        "Receive automatic notifications through the app when you are near a quest"
    ]
    @Published var ContentsStories: [String] = [
        "person.wave.2",
        "Experts in your area",
        "We put you in touch with the right people to optimally advance your personal development",
        "person.3.sequence.fill",
        "Contact list",
        "Get to know your friends better and share your successes with each other",
        "list.star",
        "Feedback",
        "Receive individual feedback from companies about your person",
        "figure.stand.line.dotted.figure.stand",
        "Companies",
        "Get contacted by companies that are interested in your skills"
    ]
}
