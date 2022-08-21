//
//  HomeViewController.swift
//  Home Assignment Pago
//
//  Created by Vladut Mihai Poncea on 20.08.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let myContactsLabel: UILabel = {
        let label = UILabel()
        label.text = "CONTACTELE MELE"
        label.textColor = .black.withAlphaComponent(0.4)
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray
        self.navigationItem.title = "Contacte"
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.backgroundColor = .white
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.fill.badge.plus"), style: .plain, target: .none, action: #selector(didTapAddContact))
        self.navigationItem.rightBarButtonItem?.tintColor = .systemGray
        
        self.view.addSubview(myContactsLabel)
    }
    
    @objc private func didTapAddContact() {
        print("tapped")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myContactsLabel.frame = CGRect(x: self.view.safeAreaInsets.left+18, y: self.view.safeAreaInsets.top+10, width: myContactsLabel.intrinsicContentSize.width, height: myContactsLabel.intrinsicContentSize.height)
    }
    
}
