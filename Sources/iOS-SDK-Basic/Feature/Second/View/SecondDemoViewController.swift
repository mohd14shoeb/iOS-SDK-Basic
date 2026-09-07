//
//  SecondDemoViewController.swift
//  iOS-SDK-Basic
//
//  Created by Shoeb Khan on 07/09/26.
//

import UIKit
/// Second demo screen

 class SecondDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "Second Demo Screen"

        // Create a label
        let label = UILabel()
        label.text = "This is the second screen of the SDK demo"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false

        // Create a button to go to third screen
        let button = UIButton(type: .system)
        button.setTitle("Go to Third Screen", for: .normal)
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
        let thirdVC = ThirdDemoViewController()
        navigationController?.pushViewController(thirdVC, animated: true)
    }
}
