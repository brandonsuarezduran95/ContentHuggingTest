//
//  ViewController + tableViewDelegates.swift
//  ContentHuggingTest
//
//  Created by Brandon Suarez on 6/25/23.
//

import UIKit

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let contentHuggingViewController = ContentHuggingViewController()
            navigationController?.pushViewController(contentHuggingViewController, animated: true)
        case 1:
            let contentCompressionViewController = ContentCompressionViewController()
            navigationController?.pushViewController(contentCompressionViewController, animated: true)
        default:
            let moreViewController = MoreViewController()
            navigationController?.pushViewController(moreViewController, animated: true)
        }
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Content Hugging"
        case 1:
            cell.textLabel?.text = "Content Compression"
        default:
            cell.textLabel?.text = "More"
        }
        return cell
    }
    
    
}
