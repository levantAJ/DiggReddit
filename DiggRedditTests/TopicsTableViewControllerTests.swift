//
//  TopicsTableViewControllerTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

final class TopicsTableViewControllerTests: XCTestCase {
    
    var topicsVC: TopicsTableViewController!
    var topics: [TopicsTableViewCellModel]!
    
    override func setUp() {
        super.setUp()
        topicsVC = UIStoryboard.viewController(screenName: "TopicsTableViewController", storyboardName: "Topics") as! TopicsTableViewController
        topicsVC.loadViewIfNeeded() //Load view before testing 
        topics = [
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 7, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            
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
        
        XCTAssertEqual(topicsVC.tableView.rowHeight, UITableViewAutomaticDimension)
        XCTAssertEqual(topicsVC.tableView.estimatedRowHeight, 44)
    }
    
    func testAddNewTopic() {
        let count = topicsVC.tableView(topicsVC.tableView, numberOfRowsInSection: 0)
        let addTopicVC = UIStoryboard.viewController(screenName: "AddTopicViewController", storyboardName: "AddTopic") as! AddTopicViewController
        let newTopic = Topic(id: 0, title: "This is new topic", numberOfUpvotes: 0, numberOfDownvotes: 0)
        topicsVC.addTopicViewController(addTopicVC, didAdd: newTopic)
        XCTAssertEqual(topicsVC.tableView(topicsVC.tableView, numberOfRowsInSection: 0), count + 1)
    }
}
