//
//  ActionItem.swift
//  Plan&Talk
//
//  Created by iguest on 3/10/19.
//  Copyright © 2019 Patient as Safeguard. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    //var type: UIImage?
    var from: Int
    var when: Int
    var done: Bool
    
    init?(name: String, from: Int, when: Int) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The from must be either 0 or 1, denotes from careteam or patient
        guard (from >= 0) && (from <= 1) else {
            return nil
        }
        
        //The when must be between 0-2, denotes now/at home/some time later
        guard (when >= 0) && (from <= 2) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.from = from
        self.when = when
        self.done = false
    }
    
}

