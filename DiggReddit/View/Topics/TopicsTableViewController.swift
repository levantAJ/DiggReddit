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
        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddTopic" {
            let addTopicNC = segue.destination as! UINavigationController // Make sure we not lost the Add topic screen
            let addTopicVC = addTopicNC.topViewController as! AddTopicViewController
            addTopicVC.delegate = self // Handle did add topic
        }
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

// MARK: - AddTopicViewControllerDelegate

extension TopicsTableViewController: AddTopicViewControllerDelegate {
    func addTopicViewController(_ controller: AddTopicViewController, didAdd topic: Topic) {
        viewModel.add(topic: topic)
        let indexPath = IndexPath(row: viewModel.topics.count - 1, section: 0)
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        tableView.scrollToRow(at: indexPath, at: .none, animated: true)
    }
}
