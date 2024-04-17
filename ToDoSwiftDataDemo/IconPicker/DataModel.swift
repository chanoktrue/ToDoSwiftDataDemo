//
//  DataModel.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI
import Observation

@Observable
class DataModel {
    var icons: [String] = ["pencil","eraser.fill", "scribble", "visionpro.badge.exclamationmark"]
    var searchText = ""
    var iconFillter: [String] {
        if searchText.isEmpty {
            return icons
        }else {
            return icons.filter{$0.lowercased().contains(searchText.lowercased())}
        }
    }
}


