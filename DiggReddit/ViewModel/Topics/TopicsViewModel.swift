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
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "Caterpillar found to eat shopping bags, suggesting solution to plastic pollution ", numberOfUpvotes: 1000, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "LSD microdoses make people feel sharper, and scientists want to know how", numberOfUpvotes: 934, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "Your choice of language and stack matters as subsequent rounds of interviews will focus on the code that you have written and the technical decisions that you have made. You are still welcome to try out new languages and frameworks for this coding challenge but we would love to have an in-depth discussion on your choice of language and framework whenever possible.", numberOfUpvotes: 600, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "In addition, major bonus points will be added if you deploy your solution online on free hosting platforms such as Heroku and point us to this solution. Android / iOS candidates should ensure that their build instructions work without issues. As mentioned above in what we are looking out for, we will need you to make intermediate commits at different stages of your development process.", numberOfUpvotes: 500, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "With Neuralink, Elon Musk Promises Human-To-Human Telepathy", numberOfUpvotes: 700, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "NNCP: utilities simplifying secure store-and-forward files and mail exchanging", numberOfUpvotes: 100, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 7, title: "Why I published in a predatory journal", numberOfUpvotes: 20, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 8, title: "HPTT: A High-Performance Tensor Transposition C++ Library", numberOfUpvotes: 35, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 9, title: "Founder Stories: Kate Heddleston of Opsolutely (YC S16) ", numberOfUpvotes: 1, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 10, title: "Show HN: Play multiplayer and singleplayer NES games online", numberOfUpvotes: 0, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 11, title: "Lyrebird – An API to copy the voice of anyone", numberOfUpvotes: 19, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 12, title: "Allow the user to upvote or downvote a topic. For this challenge, the user may upvote or downvote the same topic multiple times.", numberOfUpvotes: 930, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 13, title: "Glob Matching Can Be Simple and Fast Too.", numberOfUpvotes: 333, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 14, title: "High-performance .NET by example: Filtering bot traffic", numberOfUpvotes: 146, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 15, title: "For the purpose of this challenge, you should not work on the following", numberOfUpvotes: 36535, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 16, title: "For iOS and Android candidates only: Please build an app for the platform that you are applying for, and ensure that you follow the corresponding user interface design and performance guidelines for the platform.", numberOfUpvotes: 3242, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 17, title: "Code comments and documentation: For the key functionalities mentioned above, you should provide code comments and text-based documentation (eg. README) on the hows and whys of your implementation and the assumptions you are making.", numberOfUpvotes: 33, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 18, title: "A black hole in a low mass X-ray binary star", numberOfUpvotes: 898, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 19, title: "Tales of SugarCRM Security Horrors", numberOfUpvotes: 270, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 20, title: "Happy hiring: The firm that recruits Mr Men characters", numberOfUpvotes: 78, numberOfDownvotes: 200)),
            ]
    }
    
    func topic(at index: Int) -> TopicsTableViewCellModel? {
        guard index < topics.count else { return nil }
        return topics[index]
    }
}
