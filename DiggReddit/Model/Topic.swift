//
//  Topic.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

struct Topic {
    var id: Int
    var title: String
    var upvotes: [Int] //User ids who upvoted
    var downvotes: [Int] //User ids who downvoted
}
