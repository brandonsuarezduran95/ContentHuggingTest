//
//  MoreViewController.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

class MoreViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        print("MoreViewController Initialized")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("MoreViewController De-Initialized")
    }
    
    let redView = UIView()
    let blueView = UIView()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        title = "More"
        setUpRedView()
        setUpBlueView()
    }
}
