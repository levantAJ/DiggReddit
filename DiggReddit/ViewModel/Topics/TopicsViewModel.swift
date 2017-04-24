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
            TopicsTableViewCellModel(topic: Topic(id: 1, title: "NNCP: utilities simplifying secure store-and-forward files and mail exchanging (nncpgo.org)", numberOfUpvotes: 1000, numberOfDownvotes: 0)),
            TopicsTableViewCellModel(topic: Topic(id: 2, title: "LSD microdoses make people feel sharper, and scientists want to know how", numberOfUpvotes: 934, numberOfDownvotes: 689)),
            TopicsTableViewCellModel(topic: Topic(id: 3, title: "Thousands of computers now compromised with leaked NSA tools, researchers say (cyberscoop.com)", numberOfUpvotes: 600, numberOfDownvotes:983)),
            TopicsTableViewCellModel(topic: Topic(id: 4, title: "NASA Image Shows Earth Between the Rings of Saturn (nasa.gov)", numberOfUpvotes: 503, numberOfDownvotes: 987)),
            TopicsTableViewCellModel(topic: Topic(id: 5, title: "With Neuralink, Elon Musk Promises Human-To-Human Telepathy", numberOfUpvotes: 324, numberOfDownvotes: 96)),
            TopicsTableViewCellModel(topic: Topic(id: 6, title: "NNCP: utilities simplifying secure store-and-forward files and mail exchanging", numberOfUpvotes: 100, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 7, title: "Why I published in a predatory journal", numberOfUpvotes: 20, numberOfDownvotes: 89)),
            TopicsTableViewCellModel(topic: Topic(id: 8, title: "HPTT: A High-Performance Tensor Transposition C++ Library", numberOfUpvotes: 35, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 9, title: "Founder Stories: Kate Heddleston of Opsolutely (YC S16) ", numberOfUpvotes: 1, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 10, title: "Show HN: Play multiplayer and singleplayer NES games online", numberOfUpvotes: 0, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 11, title: "Lyrebird – An API to copy the voice of anyone", numberOfUpvotes: 19, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 12, title: "Flexport is hiring engineers to build tech to enable free trade (flexport.com)", numberOfUpvotes: 930, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 13, title: "Glob Matching Can Be Simple and Fast Too.", numberOfUpvotes: 333, numberOfDownvotes: 20)),
            TopicsTableViewCellModel(topic: Topic(id: 14, title: "High-performance .NET by example: Filtering bot traffic", numberOfUpvotes: 146, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 15, title: "CEI and WJ RS-111 Receiver Series – Used in the Watergate Wiretapping (terryo.org)", numberOfUpvotes: 36535, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 16, title: "A response to \"An experienced JavaScript dev’s account of learning React|\" (medium.com)", numberOfUpvotes: 3242, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 17, title: "Code comments and documentation: For the key functionalities mentioned above, you should provide code comments and text-based documentation (eg. README) on the hows and whys of your implementation and the assumptions you are making.", numberOfUpvotes: 33, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 18, title: "A black hole in a low mass X-ray binary star", numberOfUpvotes: 898, numberOfDownvotes: 540)),
            TopicsTableViewCellModel(topic: Topic(id: 19, title: "Tales of SugarCRM Security Horrors", numberOfUpvotes: 270, numberOfDownvotes: 200)),
            TopicsTableViewCellModel(topic: Topic(id: 20, title: "Happy hiring: The firm that recruits Mr Men characters", numberOfUpvotes: 78, numberOfDownvotes: 345)),
            ]
    }
    
    func topic(at index: Int) -> TopicsTableViewCellModel? {
        guard index < topics.count else { return nil }
        return topics[index]
    }
}
