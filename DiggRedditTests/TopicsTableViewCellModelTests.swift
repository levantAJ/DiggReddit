//
//  TopicsTableViewCellModelTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/25/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

final class TopicsTableViewCellModelTests: XCTestCase {
    
    var cellModel: TopicsTableViewCellModel!
    
    override func setUp() {
        super.setUp()
        cellModel = TopicsTableViewCellModel(topic: Topic(id: 1, title: "Check for duplicate upvotes, i.e. your application should allow the same user / person to upvote on a topic multiple times", numberOfUpvotes: 123, numberOfDownvotes: 890))
    }
    
    func testNumberOfDownvotes() {
        XCTAssertEqual(cellModel.numberOfDownvotes, cellModel.topic.numberOfDownvotes)
        
        cellModel.numberOfDownvotes += 1
        XCTAssertEqual(cellModel.numberOfDownvotes, cellModel.topic.numberOfDownvotes)
        
        cellModel.numberOfDownvotes -= 1
        XCTAssertEqual(cellModel.numberOfDownvotes, cellModel.topic.numberOfDownvotes)
        
        cellModel.numberOfDownvotes += Int(arc4random())
        XCTAssertEqual(cellModel.numberOfUpvotes, cellModel.topic.numberOfUpvotes)
        
        cellModel.numberOfDownvotes -= Int(arc4random())
        XCTAssertEqual(cellModel.numberOfUpvotes, cellModel.topic.numberOfUpvotes)
    }
    
    func testNumberOfUpvotes() {
        XCTAssertEqual(cellModel.numberOfUpvotes, cellModel.topic.numberOfUpvotes)
        
        cellModel.numberOfDownvotes += 1
        XCTAssertEqual(cellModel.numberOfUpvotes, cellModel.topic.numberOfUpvotes)
        
        cellModel.numberOfDownvotes -= 1
        XCTAssertEqual(cellModel.numberOfUpvotes, cellModel.topic.numberOfUpvotes)
        
        cellModel.numberOfDownvotes += Int(arc4random())
        XCTAssertEqual(cellModel.numberOfUpvotes, cellModel.topic.numberOfUpvotes)
        
        cellModel.numberOfDownvotes -= Int(arc4random())
        XCTAssertEqual(cellModel.numberOfUpvotes, cellModel.topic.numberOfUpvotes)
    }
    
    func testTitle() {
        XCTAssertEqual(cellModel.title, cellModel.topic.title)
    }
    
    func testId() {
        XCTAssertEqual(cellModel.id, cellModel.topic.id)
    }
}
