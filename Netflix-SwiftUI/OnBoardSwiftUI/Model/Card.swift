//
//  Card.swift
//  OnBoardSwiftUI
//
//  Created by Aditya Gaba on 03/05/23.
//
import SwiftUI

struct Card {
    let image: String
    let title: String
    let description: String
    
    init(image: String, title: String, description: String) {
        self.image = image
        if image == "blank" {
            self.title = "     " + title + "\n" + "entertainment,\n" + " " + "one low price."
        } else {
            self.title = title
        }
        self.description = description
    }
}

let testData = [
        Card(image: "blank", title: "Unlimited", description: "All of Netflix, starting at just\n" + "$6.99."),
        Card(image: "screen1", title: "      " + "Watch\n" + "everywhere", description: "Stream on your phone, tablet,\n" + "laptop, and TV and more."),
        Card(image: "screen2", title:  " " + "Download and\n" + "  " + "watch offline", description: "Always have something to watch\n" + "offline."),
        Card(image: "screen3", title: "No pesky\n" + "contracts", description: "Join today, cancel anytime.")
]

