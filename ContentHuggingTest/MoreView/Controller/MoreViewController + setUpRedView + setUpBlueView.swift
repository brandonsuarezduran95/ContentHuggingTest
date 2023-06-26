//
//  MoreViewController + setUpRedView + setUpBlueView.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

extension MoreViewController {
    func setUpRedView() {
        view.addSubview(redView)
        
        redView.backgroundColor = .systemRed
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            redView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10),
            redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    func setUpBlueView() {
        view.addSubview(blueView)
        
        blueView.backgroundColor = .systemBlue
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            blueView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -10),
            blueView.leftAnchor.constraint(equalTo: redView.rightAnchor, constant: 8),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
        ])
        
    }
}
