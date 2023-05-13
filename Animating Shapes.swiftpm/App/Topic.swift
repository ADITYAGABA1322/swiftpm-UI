//
//  Topic.swift
//
//
//  Created by Aditya Gaba on 13/05/23.
//


import SwiftUI

struct Topic: Identifiable, Hashable {
    var id : UUID = UUID()
    var title : String
    var description: String
    var systemSymbol : String
    var destination : Destination
}

