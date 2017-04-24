//
//  TopicsTableViewController.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import UIKit

//Make `final` to say there is no subclass for this view controller

final class TopicsTableViewController: UITableViewController {
    
    var viewModel = TopicsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = Constant.LocalizedString.DiggReddit
        tableView.register(identifier: Constant.TopicsTableViewCell.ReuseIdentifier)
    }
}

// MARK: - Table view data source

extension TopicsTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.topics.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.TopicsTableViewCell.ReuseIdentifier, for: indexPath) as! TopicsTableViewCell //Reuse topic table view cell
        if let topic = viewModel.topic(at: indexPath.row) {
            cell.set(topic: topic)
        }
        return cell
    }
}
