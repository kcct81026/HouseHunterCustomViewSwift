//
//  CustomInfoTableViewCell.swift
//  HouseHunter
//
//  Created by KC on 29/05/2022.
//

import UIKit

class CustomInfoTableViewCell: UITableViewCell {
    
    private var data: HouseInfoItem?

    
    let customView : CustomHouseInfoView = {
        let ui = CustomHouseInfoView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupConstraints()
    


    }
    
    func bindData(_ data: HouseInfoItem) {
        self.data = data
        customView.bindData(data)
    }

    private func setupConstraints(){
        self.contentView.addSubview(customView)

        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            customView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            customView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -20),

        ])
    }

}
