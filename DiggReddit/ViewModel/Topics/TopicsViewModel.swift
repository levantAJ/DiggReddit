//
//  TopicsViewModel.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

final class TopicsViewModel {
    var topics: [TopicsTableViewCellModel] = []
    
    func topic(at index: Int) -> TopicsTableViewCellModel? {
        guard index < topics.count else { return nil }
        return topics[index]
    }
}
