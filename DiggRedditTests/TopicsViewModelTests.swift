//
//  TopicsViewModelTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

class TopicsViewModelTests: XCTestCase {
    
    var viewModel: TopicsViewModel!
    var topics: [TopicsTableViewCellModel]!
    
    override func setUp() {
        super.setUp()
        viewModel = TopicsViewModel()
        topics = [
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 7, title: "First topic", numberOfUpvotes: 12, numberOfDownvotes: 200)),
            
        ]
    }
    
}
