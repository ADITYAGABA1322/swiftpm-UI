/*
 EventTask.swift
 Data Planner
 
 
 Created by Aditya Gaba on 5/04/23.
*/

import Foundation

struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
