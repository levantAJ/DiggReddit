//
//  AddTopicViewController.swift
//  DiggReddit
//
//  Created by Le Tai on 4/25/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import UIKit

final class AddTopicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem?.title = Constant.LocalizedString.Back
        navigationItem.title = Constant.LocalizedString.AddTopic
    }

}
