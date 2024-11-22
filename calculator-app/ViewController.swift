//
//  ViewController.swift
//  calculator-app
//
//  Created by eden on 11/20/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // properies
    let numberLabel = UILabel()
    var verticalStackView: UIStackView!
    var buttons: [UIButton] = []
    var calculatorButtonLabels = [
        ["7", "8", "9", "+"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "*"],
        ["AC", "0", "=", "/"]
    ]
    
    // lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpNumberLabel()
        setUpButtons()
        setUpConstraints()
    }
    
    // setup methods
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
        var rowStackViews: [UIStackView] = []
        
        for row in calculatorButtonLabels {
            var rowButtons: [UIButton] = []
            for label in row {
                let button = makeButton(titleValue: label, action: nil, backgroundColor: isOperator(label) ? .orange : UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0))
                
                rowButtons.append(button)
                buttons.append(button)
            }
            let rowStackView = makeHorizontalStackView(rowButtons)
            rowStackViews.append(rowStackView)
        }
        
        verticalStackView = UIStackView(arrangedSubviews: rowStackViews)
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        verticalStackView.backgroundColor = .black
        
        view.addSubview(verticalStackView)
    }
    
    private func setUpConstraints() {
        numberLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        
        verticalStackView.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(numberLabel.snp.bottom).offset(60)
        }
    }
    
    // helper methods
    private func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .black
        stackView.snp.makeConstraints { make in
            make.height.equalTo(80)
        }
        return stackView
    }
    
    private func makeButton(titleValue: String, action: Selector?, backgroundColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(titleValue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.backgroundColor = backgroundColor
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 40
        button.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(button.snp.width)
        }
        return button
    }
    
    private func isOperator(_ label: String) -> Bool {
        return ["+", "-", "*", "/", "AC", "="].contains(label)
    }
}
