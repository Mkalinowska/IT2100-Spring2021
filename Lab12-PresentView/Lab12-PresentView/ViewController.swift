//
//  ViewController.swift
//  Lab12-PresentView
//
//  Created by Marta Kalinowska on 4/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y:0, width: 200, height: 50))
        button.setTitleColor(.purple, for: .normal)
        button.backgroundColor = .systemYellow
        button.setTitle("Tap the Button", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        let vc = SecondViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
}
