//
//  ViewController.swift
//  StringManipulation
//
//  Created by Nicholas Servidio on 4/18/17.
//  Copyright © 2017 Nicholas Servidio. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet fileprivate weak var textField: UITextView!
    
    // MARK: - Actions
    
    @IBAction fileprivate func didTapShowStatisticsButton() {
        let statistics = textField.text.stringStatistics
        let viewModel = StatisticsViewModel.init(stringStatistics: statistics)
        let alert = UIAlertController(title: "Statistics", message: viewModel.displayString, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    @IBAction fileprivate func didTapAbbreviateButton() {
        let string = textField.text.abbreviatedStrings
        textField.text = string
    }
}
