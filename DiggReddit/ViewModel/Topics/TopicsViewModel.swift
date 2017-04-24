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
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "Always return a list of top 20 topics (sorted by upvotes, descending) on the homepage", numberOfUpvotes: 1000, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "The point seems to be that sometimes, you need a property that has automatic storage and some behavior, for instance to notify other objects that the property just changed!", numberOfUpvotes: 934, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "Your choice of language and stack matters as subsequent rounds of interviews will focus on the code that you have written and the technical decisions that you have made. You are still welcome to try out new languages and frameworks for this coding challenge but we would love to have an in-depth discussion on your choice of language and framework whenever possible.", numberOfUpvotes: 600, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "In addition, major bonus points will be added if you deploy your solution online on free hosting platforms such as Heroku and point us to this solution. Android / iOS candidates should ensure that their build instructions work without issues. As mentioned above in what we are looking out for, we will need you to make intermediate commits at different stages of your development process.", numberOfUpvotes: 500, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "If you have questions, please feel free to ask us over the email thread.", numberOfUpvotes: 700, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "Allow the user to submit topics. For this challenge, a “topic” is simply a string that does not exceed 255 characters.", numberOfUpvotes: 100, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 7, title: "Allow the user to upvote or downvote a topic. For this challenge, the user may upvote or downvote the same topic multiple times.", numberOfUpvotes: 20, numberOfDownvotes: 200)),
            ]
    }
    
    func topic(at index: Int) -> TopicsTableViewCellModel? {
        guard index < topics.count else { return nil }
        return topics[index]
    }
}
