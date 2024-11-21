//
//  ViewController.swift
//  calculator-app
//
//  Created by eden on 11/20/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let numberLabel = UILabel()
    var horizontalStackView: UIStackView!
    var button = UIButton()
    var calculatorButtonLabels = ["7", "8", "9", "+"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpNumberLabel()
        setUpConstraints()
    }
    
    private func setUpView() {
        view.backgroundColor = .black
    }
    
    private func setUpNumberLabel() {
        numberLabel.textColor = .white
        numberLabel.text = "12345"
        numberLabel.textAlignment = .right
        numberLabel.font = UIFont.boldSystemFont(ofSize: 60)
        
        view.addSubview(numberLabel)
    }
    
    private func setUpConstraints() {
        numberLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
    }
}

