//
//  ViewController.swift
//  ConstraintsAnchor
//
//  Created by Daniel Yamrak on 23.07.2021.
//

import UIKit

class ViewController: UIViewController {

    var findTextField: UITextField!
    var replaceTextField: UITextField!
    var findLabel: UILabel!
    var replaceLabel: UILabel!
    var inputTextLabel: UILabel!
    var textView: UITextView!
    var replaceButton: UIButton!
    var stackView = UIStackView()

    private let accentColor = UIColor(red: 147/255, green: 167/255, blue: 218/255, alpha: 1)
    private let cornerRadius: CGFloat = 8
    private let borderColor = CGColor(gray: 0, alpha: 0.5)
    private let borderWidth: CGFloat = 1


    override func viewDidLoad() {
        super.viewDidLoad()

        addUIElements()
        configureStackView()
        setConstraints()
    }

    private func configureStackView() {
        view.addSubview(stackView)
//        stackView.backgroundColor = .systemOrange
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 20

        addElementsToStackView()
        setStackViewConstraints()
    }

    private func addElementsToStackView() {
        stackView.addArrangedSubview(findLabel)
        stackView.addArrangedSubview(findTextField)
        stackView.addArrangedSubview(replaceLabel)
        stackView.addArrangedSubview(replaceTextField)
        stackView.addArrangedSubview(inputTextLabel)
        stackView.addArrangedSubview(textView)
        stackView.addArrangedSubview(replaceButton)
    }

    private func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                       constant: 60.0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                                           constant: 20.0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                                            constant: -20.0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                                          constant: -60.0).isActive = true
    }

    private func addUIElements() {

        findTextField = UITextField()
        findTextField.translatesAutoresizingMaskIntoConstraints = false
        findTextField.textAlignment = .left
        findTextField.layer.borderColor = borderColor
        findTextField.layer.borderWidth = borderWidth
        findTextField.layer.cornerRadius = cornerRadius
        view.addSubview(findTextField)

        replaceTextField = UITextField()
        replaceTextField.translatesAutoresizingMaskIntoConstraints = false
        replaceTextField.textAlignment = .left
        replaceTextField.layer.borderColor = borderColor
        replaceTextField.layer.borderWidth = borderWidth
        replaceTextField.layer.cornerRadius = cornerRadius
        view.addSubview(replaceTextField)

        findLabel = UILabel()
        findLabel.translatesAutoresizingMaskIntoConstraints = false
        findLabel.font = UIFont.systemFont(ofSize: 18)
        findLabel.text = "Find"
        findLabel.numberOfLines = 1
        view.addSubview(findLabel)

        replaceLabel = UILabel()
        replaceLabel.translatesAutoresizingMaskIntoConstraints = false
        replaceLabel.font = UIFont.systemFont(ofSize: 18)
        replaceLabel.text = "Replace with"
        replaceLabel.numberOfLines = 1
        view.addSubview(replaceLabel)

        inputTextLabel = UILabel()
        inputTextLabel.translatesAutoresizingMaskIntoConstraints = false
        inputTextLabel.font = UIFont.systemFont(ofSize: 18)
        inputTextLabel.text = "Please input text:"
        inputTextLabel.numberOfLines = 1
        view.addSubview(inputTextLabel)

        textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.layer.borderColor = borderColor
        textView.layer.borderWidth = borderWidth
        textView.layer.cornerRadius = cornerRadius
        view.addSubview(textView)

        replaceButton = UIButton()
        replaceButton.translatesAutoresizingMaskIntoConstraints = false
        replaceButton.setTitle("Replace", for: .normal)
        replaceButton.backgroundColor = accentColor
        replaceButton.layer.cornerRadius = cornerRadius
        view.addSubview(replaceButton)

    }

    private func setConstraints() {
        findTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        replaceTextField.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        replaceButton.heightAnchor.constraint(equalToConstant: 54.0).isActive = true
    }

}
