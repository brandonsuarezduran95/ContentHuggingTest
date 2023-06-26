//
//  ContentCompressionViewController + setUpButton.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

extension ContentCompressionViewController {
    func setUpButton() {
        button.setTitle("Test Compression", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.layer.cornerRadius = 15
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.setTitleColor(.systemYellow, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 30),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            button.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    @objc func didPressButton(_ sender: UIButton) {
        if leftLabel.contentCompressionResistancePriority(for: .horizontal) == .defaultHigh {
            leftLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
            rightLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        } else {
            leftLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
            rightLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        }
    }
}
