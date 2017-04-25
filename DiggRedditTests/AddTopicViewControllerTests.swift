//
//  AddTopicViewControllerTests.swift
//  DiggReddit
//
//  Created by Le Tai on 4/25/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import XCTest
@testable import DiggReddit

final class AddTopicViewControllerTests: XCTestCase {
    
    var addTopicVC: AddTopicViewController!
    
    override func setUp() {
        super.setUp()
        addTopicVC = UIStoryboard.viewController(screenName: "AddTopicViewController", storyboardName: "AddTopic") as! AddTopicViewController
        addTopicVC.loadViewIfNeeded() //Load view before testing
    }
    
    func testTitle() {
        if let title = addTopicVC.navigationItem.title {
            XCTAssertEqual(title, Constant.LocalizedString.AddTopic)
        } else {
            // Make a test failed, better than do crash
            XCTAssertNotNil(addTopicVC.navigationItem.title)
        }
    }
    
    func testTextChanged() {
        addTopicVC.topicTextView.text = "New topic"
        addTopicVC.textViewDidChange(addTopicVC.topicTextView)
        XCTAssertEqual(addTopicVC.viewModel.newTopic.title, addTopicVC.topicTextView.text)
        XCTAssertEqual(addTopicVC.navigationItem.rightBarButtonItem!.isEnabled, true)
        
        addTopicVC.topicTextView.text = ""
        addTopicVC.textViewDidChange(addTopicVC.topicTextView)
        XCTAssertEqual(addTopicVC.viewModel.newTopic.title, addTopicVC.topicTextView.text)
        XCTAssertEqual(addTopicVC.navigationItem.rightBarButtonItem!.isEnabled, false)
    }
}
