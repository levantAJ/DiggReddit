//
//  TopicsTableViewControllerTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

class TopicsTableViewControllerTests: XCTestCase {
    
    var topicsVC: TopicsTableViewController!
    var topics: [TopicsTableViewCellModel]!
    
    override func setUp() {
        super.setUp()
        topicsVC = UIStoryboard.viewController(screenName: "TopicsTableViewController", storyboardName: "Topics") as! TopicsTableViewController
        topics = [
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "First topic", upvotes: [1, 2, 3, 4, 5], downvotes: [6, 7, 8, 9, 10])),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "First topic", upvotes: [1, 2, 3, 4, 5], downvotes: [6, 7, 8, 9, 10])),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "First topic", upvotes: [1, 2, 3, 4, 5], downvotes: [6, 7, 8, 9, 10])),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "First topic", upvotes: [1, 2, 3, 4, 5], downvotes: [6, 7, 8, 9, 10])),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "First topic", upvotes: [1, 2, 3, 4, 5], downvotes: [6, 7, 8, 9, 10])),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "First topic", upvotes: [1, 2, 3, 4, 5], downvotes: [6, 7, 8, 9, 10])),
        ]
        topicsVC.viewModel.topics = topics
    }
    
    func testDataSource() {
        XCTAssertEqual(topicsVC.numberOfSections(in: topicsVC.tableView), 1)
        XCTAssertEqual(topicsVC.tableView(topicsVC.tableView, numberOfRowsInSection: 0), topics.count)
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = topicsVC.tableView(topicsVC.tableView, cellForRowAt: indexPath)
        if let reuseIdentifier = cell.reuseIdentifier {
            XCTAssertEqual(reuseIdentifier, Constant.TopicsTableViewCell.ReuseIdentifier)
        } else {
            XCTAssertNotNil(cell.reuseIdentifier)
        }
    }
    
}
