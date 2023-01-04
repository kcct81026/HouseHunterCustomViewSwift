//
//  CustomHouseDetailController.swift
//  HouseHunter
//
//  Created by KC on 29/05/2022.
//

import UIKit

class CustomHouseDetailController: UIViewController {
    
    var currentHouseInfo: HouseInfoItem?
    var comparingHouseInfo: HouseInfoItem?
    let neededHeight = UIScreen.main.bounds.height * 0.3

    
    let scrollView : UIScrollView = {
        let scrollview = UIScrollView()
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        return scrollview
    }()
    
    let contentView : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let oldLabel : UILabelPadding = {
        let label = UILabelPadding()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Your Current Place"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    let newLabel : UILabelPadding = {
        let label = UILabelPadding()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Your New Place"
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    let oldView : CustomHouseInfoView = {
        let ui = CustomHouseInfoView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let newView : CustomHouseInfoView = {
        let ui = CustomHouseInfoView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
        
    }()
    
    let labelUpgrade: UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.text = "Upgrade Now"
        ui.textAlignment = .center
        ui.backgroundColor = UIView().tintColor
        ui.textColor = .white
        ui.layer.borderColor = UIColor.lightGray.cgColor
        ui.layer.cornerRadius = 10
        ui.layer.masksToBounds = true
        return ui
    }()
    
    let viewButtonContainer : UIView = {
        let ui = UIView()
        ui.backgroundColor = .white
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let labelTerm : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.textColor = .lightGray
        ui.font = UIFont.systemFont(ofSize: 12)
        ui.text = "Terms and conditions apply"
        ui.textAlignment = .center
        return ui
    }()
    
    let viewImgContainer : UIView = {
        let ui = UIView()
        ui.backgroundColor = .clear
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let img: UIImageView = {
        let ui = UIImageView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.image = UIImage(systemName: "arrow.swap")
        return ui
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCustomViews()
        setupConstraints()
        setupData()

    }
    
    private func setupData(){
        self.navigationItem.title = "Upgrade House"
        self.navigationItem.largeTitleDisplayMode = .never
        
        self.view.backgroundColor = .white
        //oldView.frame.size.height = neededHeight
        //newView.frame.size.height = neededHeight

        oldView.bindData(currentHouseInfo!)
        newView.bindData(comparingHouseInfo!)
    }
    
    private func addCustomViews(){
        stackView.addArrangedSubview(oldLabel)
        stackView.addArrangedSubview(oldView)
        stackView.addArrangedSubview(viewImgContainer)
        stackView.addArrangedSubview(newLabel)
        stackView.addArrangedSubview(newView)
        stackView.addArrangedSubview(viewButtonContainer)
        stackView.addArrangedSubview(labelTerm)
        
        viewImgContainer.addSubview(img)
        viewButtonContainer.addSubview(labelUpgrade)
        
        contentView.addSubview(stackView)
        
        scrollView.addSubview(contentView)
        self.view.addSubview(scrollView)
    }
    
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
          scrollView.topAnchor.constraint(equalTo: view.topAnchor),
          scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
          scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
          scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
          contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
          contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
          contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor,constant: 0),
          contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
          
          contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
          //contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
          stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
          stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
          stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
          stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            oldView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            oldView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            oldView.heightAnchor.constraint(equalToConstant: neededHeight),
          
         
            newView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            newView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            newView.heightAnchor.constraint(equalToConstant: neededHeight),
            
            
            img.heightAnchor.constraint(equalToConstant: 40),
            img.widthAnchor.constraint(equalToConstant: 40),
            viewImgContainer.heightAnchor.constraint(equalToConstant: 60),
            img.centerXAnchor.constraint(equalTo: viewImgContainer.centerXAnchor),
            img.centerYAnchor.constraint(equalTo: viewImgContainer.centerYAnchor),
            
            labelUpgrade.heightAnchor.constraint(equalToConstant: 50),
            labelUpgrade.leadingAnchor.constraint(equalTo: viewButtonContainer.leadingAnchor, constant: 24),
            labelUpgrade.trailingAnchor.constraint(equalTo: viewButtonContainer.trailingAnchor, constant: -24),
            viewButtonContainer.heightAnchor.constraint(equalToConstant: 80),
            labelUpgrade.centerXAnchor.constraint(equalTo: viewButtonContainer.centerXAnchor),
            labelUpgrade.centerYAnchor.constraint(equalTo: viewButtonContainer.centerYAnchor),
        ])
        
        
        
    }
    


}
