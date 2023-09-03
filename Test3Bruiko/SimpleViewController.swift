//
//  ViewController.swift
//  Test3Bruiko
//
//  Created by Роман Бакаев on 31.08.2023.
//

import UIKit


//MARK: - SimpleViewController
final class SimpleViewController: UIViewController {
    
//MARK: - Private property
    private var simpleLabel = UILabel()
    private var simpleButton = UIButton()
    private var simpleView = UIView()
    private lazy var simpleSwitch = UISwitch()
    private var switchLabel = UILabel()
    
    // MARK: - Override UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
       setupView()
    }
    @objc
    private func changeLabel() {
        simpleLabel.text = "Hello, Tim"
    }
    @objc
    private func changeColorView() {
        if simpleSwitch .isOn {
            simpleView.backgroundColor = .green
            switchLabel.text = "ON"
        } else {
            simpleView.backgroundColor = .white
            switchLabel.text = "OFF"
        }
    }


}
//MARK: - Setting View
extension SimpleViewController {
    func setupView() {
        view.backgroundColor = .systemPink
        
        addSubViews()
        addActions()
        setupSimpleLabel()
        setupSwitchLabel()
        setupSimpleButton()
        setupSimpleView()
        setupSimpleSwitch()
        
        setupLayout()
    }
}

//MARK: - Setting
extension SimpleViewController {
    func addSubViews() {
        view.addSubview(simpleLabel)
        view.addSubview(simpleButton)
        view.addSubview(simpleView)
        view.addSubview(simpleSwitch)
        view.addSubview(switchLabel)
    }
    
    func addActions() {
        simpleButton.addTarget(self, action: #selector(changeLabel), for: .touchUpInside)
        simpleSwitch.addTarget(self, action: #selector(changeColorView), for:.valueChanged)
    }
    
    func setupSimpleLabel(){
        simpleLabel.text = "Hi"
        simpleLabel.textColor = .white
        simpleLabel.font = UIFont.boldSystemFont(ofSize: 32)
    }
    
    func setupSwitchLabel(){
        switchLabel.text = "ON"
        switchLabel.textColor = .white
        switchLabel.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    func setupSimpleButton(){
        simpleButton.setTitle("Show", for: .normal)
        simpleButton.setTitleColor(.black, for: .normal)
        simpleButton.layer.cornerRadius = 15
        simpleButton.backgroundColor = .white
        simpleButton.titleLabel?.font = UIFont.systemFont(ofSize: 25,
                                                          weight: .bold)
        simpleButton.setImage(UIImage(systemName: "person"), for: .normal)
        simpleButton.tintColor = .red
    }
    
    func setupSimpleView(){
        simpleView.backgroundColor = .white
        simpleView.layer.cornerRadius = 20
    }
    
    func setupSimpleSwitch() {
        simpleSwitch.isOn = true
        simpleSwitch.onTintColor = .green
        simpleSwitch.backgroundColor = .darkGray
        simpleSwitch.layer.cornerRadius = 16
        simpleSwitch.thumbTintColor = .yellow

    }
}

//MARK: - Layout
extension SimpleViewController {
    func setupLayout(){
        [simpleLabel,simpleButton,simpleView,simpleSwitch,switchLabel].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            simpleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            simpleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            simpleButton.topAnchor.constraint(equalTo: simpleLabel.bottomAnchor, constant: 200),
            simpleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            simpleButton.widthAnchor.constraint(equalToConstant: 200),
            simpleButton.heightAnchor.constraint(equalToConstant: 70),
            
            simpleView.topAnchor.constraint(equalTo: simpleLabel.bottomAnchor, constant: 50),
            simpleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            simpleView.widthAnchor.constraint(equalToConstant: 200),
            simpleView.heightAnchor.constraint(equalToConstant: 100),
            
            simpleSwitch.topAnchor.constraint(equalTo: simpleButton.bottomAnchor, constant: 50),
            simpleSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
            switchLabel.topAnchor.constraint(equalTo: simpleButton.bottomAnchor, constant: 55),
            switchLabel.leadingAnchor.constraint(equalTo: simpleSwitch.leadingAnchor, constant: 60),
            
            
        ])
        
        
//        simpleLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
//        simpleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//
//        simpleButton.topAnchor.constraint(equalTo: simpleLable.bottomAnchor, constant: 200).isActive = true
//        simpleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        simpleButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        simpleButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
}
