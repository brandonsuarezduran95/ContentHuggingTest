//
//  ContentHuggingViewController + setUpLabels.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

extension ContentHuggingViewController {
    func setUpTopLabel() {
        
        topLabel.text = "Top Label"
        topLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        topLabel.textAlignment = .center
        topLabel.backgroundColor = .systemGreen
//        topLabel.setContentHuggingPriority(UILayoutPriority(250), for: .vertical)
        topLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        topLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10),
            topLabel.rightAnchor.constraint(equalTo: rightLabel.leftAnchor, constant:  -10)
        ])
        
    }
    
    func setUpBottomLabel() {
        
        bottomLabel.text = "Bottom Label"
        bottomLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        bottomLabel.textAlignment = .center
        bottomLabel.backgroundColor = .systemPurple
//        bottomLabel.setContentHuggingPriority(UILayoutPriority(260), for: .vertical)
        bottomLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        bottomLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 10),
            bottomLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10),
            bottomLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -30),
            bottomLabel.rightAnchor.constraint(equalTo: rightLabel.leftAnchor , constant: -10)
        ])
    }
    
    func setUpRightLabel() {
        rightLabel.text = "Right Label"
        rightLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        rightLabel.textAlignment = .center
        rightLabel.backgroundColor = .systemYellow
        rightLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rightLabel.topAnchor.constraint(equalTo: topLabel.topAnchor),
            rightLabel.bottomAnchor.constraint(equalTo: bottomLabel.bottomAnchor),
            rightLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
}
