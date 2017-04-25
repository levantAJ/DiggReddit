//
//  AddTopicViewModel.swift
//  DiggReddit
//
//  Created by Le Tai on 4/25/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

final class AddTopicViewModel {
    var newTopic: Topic!
    
    init() {
        newTopic = Topic(id: 0, title: "", numberOfUpvotes: 0, numberOfDownvotes: 0)
    }
    
    func set(title: String) {
        newTopic.title = title
    }
}
