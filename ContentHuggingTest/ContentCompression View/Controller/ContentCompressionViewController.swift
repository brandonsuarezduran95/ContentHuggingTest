//
//  ContentCompressionViewController.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

class ContentCompressionViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        print("ContentCompressionViewController Initialized")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("ContentCompressionViewController De-Initialized")
    }
    
    let leftLabel = UILabel()
    let rightLabel = UILabel()
    let bottomLabel = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Compression"
        view.backgroundColor = .systemYellow
        setUpViews()
        setUpLeftLabel()
        setUpRightLabel()
        setBottomLabel()
        setUpButton()
    }
}
