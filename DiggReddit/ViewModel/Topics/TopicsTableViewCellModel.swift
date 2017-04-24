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
    fileprivate(set) var topic: Topic!
    
    init(topic: Topic) {
        self.topic = topic
    }
}

// MARK: - TopicsTableViewCellProtocol

extension TopicsTableViewCellModel: TopicsTableViewCellProtocol {
    var numberOfDownvotes: Int {
        get {
            return topic.numberOfDownvotes
        }
        set {
            topic.numberOfDownvotes = newValue
        }
    }

    var numberOfUpvotes: Int {
        get {
            return topic.numberOfUpvotes
        }
        set {
            topic.numberOfUpvotes = newValue
        }
    }

    var id: Int {
        return topic.id
    }
    
    var title: String {
        return topic.title
    }
}

// MARK: - Equatable

extension TopicsTableViewCellModel: Equatable {
    public static func ==(lhs: TopicsTableViewCellModel, rhs: TopicsTableViewCellModel) -> Bool {
        return lhs.id == rhs.id

    }
}
