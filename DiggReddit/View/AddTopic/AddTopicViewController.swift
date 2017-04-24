//
//  AddTopicViewController.swift
//  DiggReddit
//
//  Created by Le Tai on 4/25/17.
//  Copyright © 2017 levantAJ. All rights reserved.
//

import UIKit

protocol AddTopicViewControllerDelegate: class {
    func addTopicViewController(_ controller: AddTopicViewController, didAdd topic: Topic)
}

final class AddTopicViewController: UIViewController {
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var topicTextView: UITextView!
    @IBOutlet weak var closeButton: UIBarButtonItem!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    weak var delegate: AddTopicViewControllerDelegate?
    
    var viewModel = AddTopicViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = Constant.LocalizedString.AddTopic
        navigationItem.rightBarButtonItem?.isEnabled = !topicTextView.text.isEmpty //Affer users add text for topic then turn enabled
        topicTextView.delegate = self
    }

}

// MARK: - UITextViewDelegate

extension AddTopicViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        navigationItem.rightBarButtonItem?.isEnabled = !topicTextView.text.isEmpty
        viewModel.set(title: topicTextView.text)
    }
}

// MARK: - Users Interactions

extension AddTopicViewController {
    @IBAction func doneButtonTapped(_ sender: Any) {
        topicTextView.resignFirstResponder()
        navigationController?.dismiss(animated: true) { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.delegate?.addTopicViewController(strongSelf, didAdd: strongSelf.viewModel.newTopic)
        }
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        topicTextView.resignFirstResponder()
        let alertVC = UIAlertController(title: Constant.LocalizedString.AreYouSure, message: nil, preferredStyle: .actionSheet)
        alertVC.addAction(UIAlertAction(title: Constant.LocalizedString.Discard, style: .destructive) { [weak self] _ in
            self?.navigationController?.dismiss(animated: true, completion: nil)
        })
        alertVC.addAction(UIAlertAction(title: Constant.LocalizedString.GoBack, style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
}
