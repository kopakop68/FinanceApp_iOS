//
//  Item.swift
//  Chaturvedi's Finances
//
//  Created by Kopal Chaturvedi on 25/08/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
