//
//  TopicsTableViewCellModel.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

// Basically the Controller never known Model and vice versa
// The ViewModel is the model for view
// This ViewModel support only the assets that the View need

final class TopicsTableViewCellModel {
    fileprivate var topic: Topic!
    
    init(topic: Topic) {
        self.topic = topic
    }
}

// MARK: - TopicsTableViewCellProtocol

extension TopicsTableViewCellModel: TopicsTableViewCellProtocol {
    var id: Int {
        return topic.id
    }
    
    var title: String {
        return topic.title
    }
    
    var numberOfUpvotes: String {
        return "\(topic.upvotes)"
    }
    
    var numberOfDownvotes: String {
        return "\(topic.downvotes)"
    }
}
