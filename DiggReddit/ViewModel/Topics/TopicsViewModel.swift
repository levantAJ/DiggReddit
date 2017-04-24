//
//  TopicsViewModel.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

// Remove not needed `import`
// Using `final` to remind that there are not subclass, support to refactor later on, make build faster
// Inherence when it needed, otherwise remove inherence

final class TopicsViewModel {
    var topics: [TopicsTableViewCellModel] = [] {
        didSet {
            // Make sure the data always sorted after its changed
            topics.sort { $0.0.numberOfUpvotes > $0.1.numberOfUpvotes }
        }
    }
    
    init() {
        load()
    }
    
    func load() {
        // This method using to fetch list of topics
        // Using the dummies data here
        topics = [
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "First topic", numberOfUpvotes: 1000, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "First topic", numberOfUpvotes: 934, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "First topic", numberOfUpvotes: 600, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "First topic", numberOfUpvotes: 500, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "First topic", numberOfUpvotes: 700, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "First topic", numberOfUpvotes: 100, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 7, title: "First topic", numberOfUpvotes: 20, numberOfDownvotes: 200)),
            ]
    }
    
    func topic(at index: Int) -> TopicsTableViewCellModel? {
        guard index < topics.count else { return nil }
        return topics[index]
    }
}
