//
//  ContentHuggingViewController + seUpButton.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import Foundation
import UIKit

extension ContentHuggingViewController {
    func setUpButton() {
        
        button.setTitle("Test Hugging", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 15
        button.backgroundColor = .white
        button.setTitleColor(.systemTeal, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 30),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            button.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    @objc func didTapButton(_ sender: UIButton) {
        
        if topLabel.contentHuggingPriority(for: .vertical) == .defaultHigh {
            topLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
            bottomLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        } else {
            topLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
            bottomLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        }
        
        if rightLabel.contentHuggingPriority(for: .horizontal) == .defaultHigh {
            //
            topLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
            bottomLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
            //
            rightLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        } else {
            //
            topLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
            bottomLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
            //
            rightLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        }
        view.setNeedsLayout()
    }
}




