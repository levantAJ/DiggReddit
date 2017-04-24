//
//  TopicsTableViewCell.swift
//  DiggReddit
//
//  Created by Le Tai on 4/24/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import UIKit

// To display an object to this cell, only conform this protocol

protocol TopicsTableViewCellProtocol {
    var id: Int { get }
    var title: String { get }
    var numberOfUpvotes: Int { get set }
    var numberOfDownvotes: Int { get set }
}

// This delegate to let owner listen event of up/down vote button tapped

protocol TopicsTableViewCellDelegate: class {
    func topicsTableViewCell(_ cell: TopicsTableViewCell, upvote topic: TopicsTableViewCellProtocol)
    func topicsTableViewCell(_ cell: TopicsTableViewCell, downvote topic: TopicsTableViewCellProtocol)
}

final class TopicsTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var upvoteButton: UIButton!
    @IBOutlet weak var downvoteButton: UIButton!
    
    weak var delegate: TopicsTableViewCellDelegate? // Using weak to avoid memory leak
    
    fileprivate(set) var topic: TopicsTableViewCellProtocol!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        upvoteButton.setImage(UIImage(named: "upvote"), for: .normal)
        upvoteButton.setImage(UIImage(named: "upvoted"), for: .selected)
        downvoteButton.setImage(UIImage(named: "downvote"), for: .normal)
        downvoteButton.setImage(UIImage(named: "downvoted"), for: .selected)
    }
    
    func set(topic: TopicsTableViewCellProtocol) {
        self.topic = topic
        titleLabel.text = topic.title
        upvoteButton.setTitle("\(topic.numberOfUpvotes)", for: .normal)
        downvoteButton.setTitle("\(topic.numberOfDownvotes)", for: .normal)
    }
}

// MARK: - Users interactions

extension TopicsTableViewCell {
    @IBAction func upvoteButtonTapped(button: UIButton) {
        upvoteButton.isSelected = true
        topic.numberOfUpvotes += 1
        upvoteButton.setTitle("\(topic.numberOfUpvotes)", for: .normal)
        delegate?.topicsTableViewCell(self, upvote: topic)
    }
    
    @IBAction func downvoteButtonTapped(button: UIButton) {
        downvoteButton.isSelected = true
        topic.numberOfDownvotes += 1
        downvoteButton.setTitle("\(topic.numberOfDownvotes)", for: .normal)
        delegate?.topicsTableViewCell(self, downvote: topic)
    }
}

extension Constant {
    struct TopicsTableViewCell {
        static let ReuseIdentifier = "TopicsTableViewCell"
    }
}
