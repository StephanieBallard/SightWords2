//
//  WordsDetailViewController.swift
//  SightWordsTwoProgrammaticUI
//
//  Created by Stephanie Ballard on 2/11/21.
//

import UIKit

class WordsDetailViewController: UIViewController {
    
    // MARK: - Properties -
    let curveView = CurveView()
    var setOfWords: SetOfWords?
    var index = 0
    
    // MARK: - Text Labels -
    private let sightWordsTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Sight Words"
        label.textColor = #colorLiteral(red: 0.5843137255, green: 0.2784313725, blue: 0.9254901961, alpha: 1)
        label.textAlignment = .center
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 12
        label.font = UIFont.init(name: "Futura", size: 50)
        return label
    }()
    
    private let setNumberTextLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.init(name: "Futura", size: 32)
        return label
    }()
    
    private let wordTextLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.0970280692, green: 0.8197546123, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.init(name: "Verdana", size: 72)
        return label
    }()
    
    // TODO: show when button is highlighted
    // MARK: - Button -
    private let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura", size: 26.0)
        button.layer.cornerRadius = 12.0
        button.layer.borderWidth = 2.0
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.8196078431, blue: 1, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 0.5843137255, green: 0.2784313725, blue: 0.9254901961, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline).withSize(22)
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    // MARK: - LifeCycle Functions -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selector -
    @objc func nextButtonTapped(_ sender: UIButton!) {
        if index + 1 == setOfWords?.words.count {
            index = 0
        } else {
            index += 1
        }
        
        wordTextLabel.text = setOfWords?.words[index].lowercased()
    }
    
    // MARK: - Helper Method -
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        
        view.addSubviews(subviews: curveView, sightWordsTextLabel, setNumberTextLabel, wordTextLabel, nextButton)

        view.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.8196078431, blue: 1, alpha: 1)
        
        curveView.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.8196078431, blue: 1, alpha: 1)
        curveView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, height: UIScreen.main.bounds.height * 0.8)
        
        sightWordsTextLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 50, paddingLeft: 40, paddingRight: 40, height: 80)
        
        setNumberTextLabel.anchor(top: sightWordsTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 130, paddingLeft: 20, paddingRight: 20, height: 25)
        setNumberTextLabel.text = setOfWords?.name
        
        wordTextLabel.anchor(top: setNumberTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 30, paddingLeft: 20, paddingRight: 20, width: 100, height: 100)
        wordTextLabel.text = setOfWords?.words[0].lowercased()
        
        nextButton.anchor(top: wordTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 50, paddingLeft: 50, paddingRight: 50, width: 150, height: 50)
    }
}
