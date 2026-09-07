//
//  FirstDemoViewController.swift
//  iOS-SDK-Basic
//
//  Created by Shoeb Khan on 07/09/26.
//

import UIKit

/// First demo screen
 class FirstDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "First Demo Screen"

        // Create a label
        let label = UILabel()
        label.text = "Welcome to the iOS SDK First Screen  Demo!"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false

        // Create a button to go to second screen
        let button = UIButton(type: .system)
        button.setTitle("Go to Second Screen", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapNextButton), for: .touchUpInside)

        view.addSubview(label)
        view.addSubview(button)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),

            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 30),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    @objc private func didTapNextButton() {
        let secondVC = SecondDemoViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}
