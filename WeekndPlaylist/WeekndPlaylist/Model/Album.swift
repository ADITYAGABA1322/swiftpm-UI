//
//  Album.swift
//  WeekndPlaylist
//
//  Created by Aditya Gaba on 16/06/23.
//
//
import SwiftUI

struct Album: Identifiable{
    var id = UUID().uuidString
    var albumName: String
}


var albums : [Album] = [

    Album(albumName: "In Between"),
    Album(albumName: "Hello"),
    Album(albumName: "Bye"),
    Album(albumName: "Baby"),

]

