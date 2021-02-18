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
    
    // MARK: - Text Labels -
    private let sightWordsTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Sight Words"
        label.textColor = #colorLiteral(red: 0.5490196078, green: 0.5058823529, blue: 0.9647058824, alpha: 1)
        label.textAlignment = .center
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
        return label
    }()
    
    // MARK: - Button -
    private let nextButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    
    // MARK: - LifeCycle Functions -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - HelperFunctions -
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        
        view.addSubviews(subviews: curveView, sightWordsTextLabel, setNumberTextLabel, wordTextLabel, nextButton)

        view.backgroundColor = #colorLiteral(red: 0.6196078431, green: 0.9647058824, blue: 1, alpha: 1)
        
        curveView.backgroundColor = #colorLiteral(red: 0.6196078431, green: 0.9647058824, blue: 1, alpha: 1)
        curveView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, height: UIScreen.main.bounds.height * 0.8)
        
        sightWordsTextLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 50, paddingLeft: 20, paddingRight: 20, height: 70)
        
        setNumberTextLabel.anchor(top: sightWordsTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 130, paddingLeft: 20, paddingRight: 20, height: 25)
        setNumberTextLabel.text = setOfWords?.name
        
        wordTextLabel.anchor(top: setNumberTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 20, paddingRight: 20, width: 100, height: 100)
        wordTextLabel.text = setOfWords?.words[0]
        
        nextButton.anchor(top: wordTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 40, paddingRight: 40, width: 150, height: 50)
        
        configureNextButton()
        
    }
    
    func configureNextButton() {
        nextButton.setTitle("Next", for: .normal)
        nextButton.titleLabel?.font = UIFont(name: "Futura", size: 26.0)
        nextButton.layer.cornerRadius = 12.0
        nextButton.layer.borderWidth = 2.0
        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.layer.backgroundColor = #colorLiteral(red: 0.6196078431, green: 0.9647058824, blue: 1, alpha: 1)
        nextButton.setTitleColor(#colorLiteral(red: 0.5490196078, green: 0.5058823529, blue: 0.9647058824, alpha: 1), for: .normal)
        nextButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline).withSize(22)
    }
}
