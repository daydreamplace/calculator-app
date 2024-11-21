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
    var buttons: [UIButton] = []
    var calculatorButtonLabels = ["7", "8", "9", "+"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpNumberLabel()
        setUpButtons()
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
    
    private func setUpButtons() {
        for label in calculatorButtonLabels {
            let button = UIButton(type: .system)
            button.setTitle(label, for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            button.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            button.setTitleColor(.white, for: .normal)
            button.layer.cornerRadius = 40
            
            buttons.append(button)
        }
        
        horizontalStackView = makeHorizontalStackView(buttons)
        view.addSubview(horizontalStackView)
    }
    
    private func setUpConstraints() {
        numberLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        
        horizontalStackView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.top.equalTo(numberLabel.snp.bottom).offset(50)
            $0.height.equalTo(80)
        }
    }
    
    private func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .black
        return stackView
    }
}

