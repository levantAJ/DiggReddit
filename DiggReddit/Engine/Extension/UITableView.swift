//
//  UITableView.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import UIKit

extension UITableView {
    
    // Register by reuse identifier
    // Load cell from nib with the identifier, then register by nib
    func register(identifier: String) {
        let nib = UINib(nibName: identifier, bundle: nil)
        register(nib, forCellReuseIdentifier: identifier)
    }
}
