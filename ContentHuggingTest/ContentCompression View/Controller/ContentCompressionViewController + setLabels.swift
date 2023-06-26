//
//  ContentCompressionViewController + setLabels.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

extension ContentCompressionViewController {
    func setUpLeftLabel() {
        leftLabel.text = "Left Label View Left Label View Label View"
        leftLabel.font = .systemFont(ofSize: 16, weight: .medium)
        leftLabel.textAlignment = .center
        leftLabel.backgroundColor = .systemOrange
        leftLabel.lineBreakMode = .byTruncatingTail
        leftLabel.numberOfLines = 1
//        leftLabel.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)
//        leftLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        leftLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            leftLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10),
            leftLabel.bottomAnchor.constraint(equalTo: bottomLabel.topAnchor, constant: -10),
            leftLabel.rightAnchor.constraint(equalTo: rightLabel.leftAnchor, constant: -10)
        ])
    }
    
    func setUpRightLabel() {
        rightLabel.text = "Right Label View"
        rightLabel.font = .systemFont(ofSize: 16, weight: .medium)
        rightLabel.textAlignment = .center
        rightLabel.backgroundColor = .systemRed
        rightLabel.lineBreakMode = .byTruncatingTail
        rightLabel.numberOfLines = 1
//        rightLabel.setContentCompressionResistancePriority(UILayoutPriority(100), for: .horizontal)
        rightLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        rightLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            rightLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10),
            rightLabel.bottomAnchor.constraint(equalTo: bottomLabel.topAnchor, constant: -10),
        ])
    }
    
    func setBottomLabel() {
        bottomLabel.text = "Bottom Label \n1\n2\n3\n4 "
        bottomLabel.font = .systemFont(ofSize: 16, weight: .medium)
        bottomLabel.textAlignment = .center
        bottomLabel.backgroundColor = .systemGreen
        bottomLabel.lineBreakMode = .byTruncatingTail
        bottomLabel.numberOfLines = 5
        bottomLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomLabel.leftAnchor.constraint(equalTo: leftLabel.leftAnchor),
            bottomLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -30),
            bottomLabel.rightAnchor.constraint(equalTo: rightLabel.rightAnchor)
        ])
    }
}
