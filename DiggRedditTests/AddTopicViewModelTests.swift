//
//  AddTopicViewModelTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/25/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

final class AddTopicViewModelTests: XCTestCase {
    
    var viewModel: AddTopicViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = AddTopicViewModel()
    }
    
    func testSetTitle() {
        viewModel.set(title: "Hello World")
        XCTAssertEqual(viewModel.newTopic.title, "Hello World")
    }
}
