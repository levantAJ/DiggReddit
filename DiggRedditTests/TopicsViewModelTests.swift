//
//  TopicsViewModelTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

final class TopicsViewModelTests: XCTestCase {
    
    var viewModel: TopicsViewModel!
    var topics: [TopicsTableViewCellModel]!
    
    override func setUp() {
        super.setUp()
        topics = [
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "First topic", numberOfUpvotes: 1, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "First topic", numberOfUpvotes: 2, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "First topic", numberOfUpvotes: 3, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "First topic", numberOfUpvotes: 5, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "First topic", numberOfUpvotes: 15, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 7, title: "First topic", numberOfUpvotes: 10, numberOfDownvotes: 200)),
        ]
        
        viewModel = TopicsViewModel()
        viewModel.topics = topics
    }
    
    func testSetTopics() {
        XCTAssertEqual(viewModel.topics.count, topics.count)
        XCTAssertEqual(viewModel.topics[0].numberOfUpvotes, 15)
        XCTAssertEqual(viewModel.topics[1].numberOfUpvotes, 12)
        XCTAssertEqual(viewModel.topics[2].numberOfUpvotes, 10)
        XCTAssertEqual(viewModel.topics[3].numberOfUpvotes, 5)
        XCTAssertEqual(viewModel.topics[4].numberOfUpvotes, 3)
        XCTAssertEqual(viewModel.topics[5].numberOfUpvotes, 2)
        XCTAssertEqual(viewModel.topics[6].numberOfUpvotes, 1)
    }
    
    func testGetTopicAtIndex() {
        XCTAssertEqual(viewModel.topics[0], viewModel.topic(at: 0))
        XCTAssertEqual(viewModel.topics[1], viewModel.topic(at: 1))
        XCTAssertEqual(viewModel.topics[2], viewModel.topic(at: 2))
        XCTAssertEqual(viewModel.topics[3], viewModel.topic(at: 3))
        XCTAssertEqual(viewModel.topics[4], viewModel.topic(at: 4))
        XCTAssertEqual(viewModel.topics[5], viewModel.topic(at: 5))
        XCTAssertEqual(viewModel.topics[6], viewModel.topic(at: 6))
        XCTAssertNil(viewModel.topic(at: 7))
    }
}
