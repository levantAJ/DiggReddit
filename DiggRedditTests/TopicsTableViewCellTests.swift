//
//  TopicsTableViewCellTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

final class TopicsTableViewCellTests: XCTestCase {
    
    var cell: TopicsTableViewCell!
    var topic: TopicsTableViewCellModel!
    
    override func setUp() {
        super.setUp()
        cell = UIView.load(nibName: Constant.TopicsTableViewCell.ReuseIdentifier) as! TopicsTableViewCell
        topic = TopicsTableViewCellModel(topic: Topic(id: 1, title: "This is new topic", numberOfUpvotes: 199, numberOfDownvotes: 200))
        
    }
    
    func testSetTopic() {
        cell.set(topic: topic)
        XCTAssertEqual(cell.titleLabel.text, topic.title)
        XCTAssertEqual(cell.downvoteButton.title(for: .normal), "\(topic.numberOfDownvotes)")
        XCTAssertEqual(cell.upvoteButton.title(for: .normal), "\(topic.numberOfUpvotes)")
    }
    
    func testVoteDown() {
        cell.set(topic: topic)
        let votes = cell.topic.numberOfDownvotes
        cell.downvoteButtonTapped(button: cell.downvoteButton)
        XCTAssertEqual(cell.topic.numberOfDownvotes, votes + 1)
    }
    
    func testVoteUp() {
        cell.set(topic: topic)
        let votes = cell.topic.numberOfUpvotes
        cell.upvoteButtonTapped(button: cell.upvoteButton)
        XCTAssertEqual(cell.topic.numberOfUpvotes, votes + 1)
    }
}
