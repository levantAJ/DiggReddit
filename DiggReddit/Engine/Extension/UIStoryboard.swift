//
//  UIStoryboard.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import UIKit

extension UIStoryboard {
    // Create a helper to get a view controller from storyboard
    class func viewController(screenName: String, storyboardName: String, bundle: Bundle? = nil) -> UIViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: bundle)
        return storyboard.instantiateViewController(withIdentifier: screenName)
    }
}
