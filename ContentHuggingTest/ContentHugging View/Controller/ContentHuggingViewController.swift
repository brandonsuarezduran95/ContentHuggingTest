//
//  ContentHuggingViewController.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

class ContentHuggingViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nil)
        print("ContentHuggingViewController Initialized")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("ContentHuggingViewController De-Initialized")
    }
    
    let topLabel = UILabel()
    let bottomLabel = UILabel()
    let rightLabel = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        title = "Hugging"
        setUpViews()
        setUpTopLabel()
        setUpBottomLabel()
        setUpButton()
        setUpRightLabel()
    }

}
