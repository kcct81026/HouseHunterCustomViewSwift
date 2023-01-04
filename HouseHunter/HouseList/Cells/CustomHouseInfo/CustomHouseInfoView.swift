//
//  CustomHouseInfoView.swift
//  HouseHunter
//
//  Created by KC on 29/05/2022.
//

import UIKit

class CustomHouseInfoView: UIView {
    private var data: HouseInfoItem?

    let shadowView : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.backgroundColor = .white
        ui.layer.cornerRadius = 20
        ui.layer.masksToBounds = false
        ui.layer.shadowOpacity = 0.2
        ui.layer.shadowOffset = CGSize(width: 2, height: 4.0)
        ui.layer.shadowColor = UIColor.black.withAlphaComponent(0.8).cgColor
        ui.layer.shadowRadius = 6.0
        return ui
    }()
    
    let containerView : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.backgroundColor = .clear
        ui.layer.cornerRadius = 20
        ui.layer.masksToBounds = true
        return ui
    }()
    
    let contentInfo : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let imgHouse : UIImageView = {
        let ui = UIImageView()
        ui.contentMode = .scaleAspectFill
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let statusStackView : UIStackView = {
        let ui = UIStackView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.axis = .vertical
        ui.spacing = 8
        return ui
    }()
    
    let upperView : UIStackView = {
        let ui = UIStackView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.axis = .horizontal
        ui.distribution = .fillEqually
        ui.spacing = 8
        return ui
    }()
    
    let bedRoomContainerView : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let imgBedRoom : UIImageView = {
        let ui = UIImageView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.image = UIImage(systemName: "bed.double.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.white)
        return ui
    }()
    
    let labelBedRoomCount : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 12)
        ui.textColor = .white
        return ui
    }()
    
    
    let ownerContainerView : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let imgBathRoom : UIImageView = {
        let ui = UIImageView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.image = UIImage(systemName: "drop.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.white)
        return ui
    }()
    
    let labelBathRoomCount : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 12)
        ui.textColor = .white
        return ui
    }()
    
    
    let areaContainerView : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let imgArea : UIImageView = {
        let ui = UIImageView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.image = UIImage(systemName: "h.square.on.square.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.white)
        return ui
    }()
    
    let labelArea : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 12)
        ui.textColor = .white
        return ui
    }()
    
    let lowerStackView : UIStackView = {
        let ui = UIStackView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.axis = .horizontal
        ui.spacing = 8
        return ui
    }()
    
    
    let locationContainer : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let imgLocation : UIImageView = {
        let ui = UIImageView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.image = UIImage(systemName: "location.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.white)
        return ui
    }()
    
    let labelLocation : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 12)
        ui.textColor = .white
        return ui
    }()
    
    let dividerView : UIView = {
        let ui = UIView()
        ui.backgroundColor = .white
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    
    let labelFrom : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 12)
        ui.text = "FROM"
        ui.textColor = .white
        return ui
    }()
    
    let labelPermonth : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 20)
        ui.textColor = .white
        return ui
    }()
    
    let labelType : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 12)
        ui.textColor = .white
        return ui
    }()
    
    let labelPrice : UILabel = {
        let ui = UILabel()
        ui.translatesAutoresizingMaskIntoConstraints = false
        ui.font = .systemFont(ofSize: 18)
        ui.textColor = .white
        return ui
    }()

    
    let favContainerView : UIView = {
        let ui = UIView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    let imgFav : UIImageView = {
        let ui = UIImageView()
        ui.translatesAutoresizingMaskIntoConstraints = false
        return ui
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addCustomViews()
        setupViews()
        constraitHouseInfoCell()
        initActionListeners()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addCustomViews()
        setupViews()
        constraitHouseInfoCell()
        initActionListeners()
    }
    
    
    
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        addCustomViews()
        setupViews()
        constraitHouseInfoCell()
        initActionListeners()
        
    }


    
    private func addCustomViews(){
                
        bedRoomContainerView.addSubview(imgBedRoom)
        bedRoomContainerView.addSubview(labelBedRoomCount)
        
        ownerContainerView.addSubview(imgBathRoom)
        ownerContainerView.addSubview(labelBathRoomCount)
        
        areaContainerView.addSubview(imgArea)
        areaContainerView.addSubview(labelArea)

        upperView.addArrangedSubview(ownerContainerView)
        upperView.addArrangedSubview(bedRoomContainerView)
        upperView.addArrangedSubview(areaContainerView)
        
        locationContainer.addSubview(imgLocation)
        locationContainer.addSubview(labelLocation)
        lowerStackView.addArrangedSubview(locationContainer)
        
        statusStackView.addArrangedSubview(upperView)
        statusStackView.addArrangedSubview(lowerStackView)
        
        
        contentInfo.addSubview(statusStackView)
        contentInfo.addSubview(dividerView)
        contentInfo.addSubview(labelFrom)
        contentInfo.addSubview(labelPermonth)
        contentInfo.addSubview(labelPrice)
        contentInfo.addSubview(labelType)
        
        favContainerView.addSubview(imgFav)
        
        containerView.addSubview(imgHouse)
        containerView.addSubview(contentInfo)
        containerView.addSubview(favContainerView)
        
        
        addSubview(shadowView)
        addSubview(containerView)
    }
    
    private func setupViews(){
        DispatchQueue.main.async {
            // Draw shadow as Image to avoid redrawing which isn't optimal
            self.shadowView.layer.shadowPath = UIBezierPath(roundedRect: self.shadowView.bounds, cornerRadius: self.shadowView.layer.cornerRadius).cgPath
            self.shadowView.layer.shouldRasterize = true
            self.shadowView.layer.rasterizationScale = UIScreen.main.scale
        }
        
        // Overlay Gradient
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let gradientLayer: CAGradientLayer = CAGradientLayer()

            gradientLayer.colors = [
                UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor,
                UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor,
              ]
            gradientLayer.locations = [0.3, 0.6]
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.frame = self.contentInfo.bounds
            
            self.contentInfo.backgroundColor = .clear
            self.contentInfo.layer.insertSublayer(gradientLayer, at: 0)
        }
        
        DispatchQueue.main.async {
            // Draw shadow as Image to avoid redrawing which isn't optimal
            self.favContainerView.backgroundColor = .white
            self.favContainerView.layer.cornerRadius = self.favContainerView.bounds.width / 2
            self.favContainerView.layer.shadowOpacity = 0.2
            self.favContainerView.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
            self.favContainerView.layer.shadowColor = UIColor.black.withAlphaComponent(0.9).cgColor
            self.favContainerView.layer.shadowRadius = 3.0
            
            self.imgFav.layer.shadowPath = UIBezierPath(ovalIn: self.favContainerView.bounds).cgPath

            self.favContainerView.layer.shouldRasterize = true
            self.favContainerView.layer.rasterizationScale = UIScreen.main.scale
        }
    }
    
    func bindData(_ data: HouseInfoItem) {
        self.data = data

        labelFrom.text = "From".uppercased()

        labelType.attributedText = NSMutableAttributedString(string: data.housingType.uppercased()).withKerning(1.5)
        labelPermonth.attributedText = data.monthlyPaymentAttributedString
        labelPrice.text = data.purchasePrice
        
        labelBedRoomCount.text = data.bedroomCountDesc
        labelBathRoomCount.text = data.ownerCountDescription
        labelArea.text = data.depreciationPerYear
        labelLocation.text = data.houseLocationDescription
        
        imgHouse.image = UIImage(named: data.houseImageUrl)
        
        if data.houseImageUrl == "img_apartment_indoor_2" {
            favContainerView.isHidden = true
        }
        else{
            favContainerView.isHidden = false
        }

        handleFavoriteState(data.isFavorite)
    }
        
    //MARK: - Action Handler
    private func handleFavoriteState(_ isFavorite: Bool) {
        if isFavorite {
            imgFav.image = UIImage(systemName: "heart.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.systemRed)
        } else {
            imgFav.image = UIImage(systemName: "heart")?.withRenderingMode(.alwaysOriginal).withTintColor(.black.withAlphaComponent(0.9))
        }
    }
    
   
    private func initActionListeners() {
        handleFavoriteAction()
    }
    
    private func handleFavoriteAction() {
        favContainerView.isUserInteractionEnabled = true
        let favTapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onTapFavourite(_:)))
        favContainerView.addGestureRecognizer(favTapGesture)
    }


    
    @objc private func onTapFavourite(_ sender: UIView){
        self.data?.isFavorite.toggle()
        self.handleFavoriteState(self.data?.isFavorite ?? false)
        
    }
    
}


extension CustomHouseInfoView {
    func constraitHouseInfoCell(){
        NSLayoutConstraint.activate([
            upperView.trailingAnchor.constraint(equalTo: statusStackView.trailingAnchor),
            upperView.leadingAnchor.constraint(equalTo: statusStackView.leadingAnchor),
            
            ownerContainerView.topAnchor.constraint(equalTo: upperView.topAnchor),
            ownerContainerView.bottomAnchor.constraint(equalTo: upperView.bottomAnchor),
            
            bedRoomContainerView.topAnchor.constraint(equalTo: upperView.topAnchor),
            bedRoomContainerView.bottomAnchor.constraint(equalTo: upperView.bottomAnchor),
            areaContainerView.topAnchor.constraint(equalTo: upperView.topAnchor),
            areaContainerView.bottomAnchor.constraint(equalTo: upperView.bottomAnchor),
            
            imgBathRoom.widthAnchor.constraint(equalToConstant: 15),
            imgBathRoom.heightAnchor.constraint(equalToConstant: 15),
            labelBathRoomCount.leadingAnchor.constraint(equalTo: imgBathRoom.trailingAnchor, constant: 8),
            labelBathRoomCount.topAnchor.constraint(equalTo: ownerContainerView.topAnchor),
            labelBathRoomCount.bottomAnchor.constraint(equalTo: ownerContainerView.bottomAnchor),
            
            imgBedRoom.widthAnchor.constraint(equalToConstant: 15),
            imgBedRoom.heightAnchor.constraint(equalToConstant: 15),
            labelBedRoomCount.leadingAnchor.constraint(equalTo: imgBedRoom.trailingAnchor, constant: 8),
            labelBedRoomCount.topAnchor.constraint(equalTo: bedRoomContainerView.topAnchor),
            labelBedRoomCount.bottomAnchor.constraint(equalTo: bedRoomContainerView.bottomAnchor),
            
            imgArea.widthAnchor.constraint(equalToConstant: 15),
            imgArea.heightAnchor.constraint(equalToConstant: 15),
            labelArea.leadingAnchor.constraint(equalTo: imgArea.trailingAnchor, constant: 8),
            labelArea.topAnchor.constraint(equalTo: areaContainerView.topAnchor),
            labelArea.bottomAnchor.constraint(equalTo: areaContainerView.bottomAnchor),

                        
        ])
        
        NSLayoutConstraint.activate([
    
            lowerStackView.trailingAnchor.constraint(equalTo: statusStackView.trailingAnchor),
            
            imgLocation.bottomAnchor.constraint(equalTo: locationContainer.bottomAnchor, constant: 0),
            imgLocation.leadingAnchor.constraint(equalTo: locationContainer.leadingAnchor, constant: 0),
            imgLocation.topAnchor.constraint(equalTo: locationContainer.topAnchor, constant: 0),
            imgLocation.widthAnchor.constraint(equalToConstant: 15),
            imgLocation.heightAnchor.constraint(equalToConstant: 15),
            
            labelLocation.trailingAnchor.constraint(equalTo: locationContainer.trailingAnchor, constant: 0),
            labelLocation.leadingAnchor.constraint(equalTo: imgLocation.trailingAnchor, constant: 8),
            labelLocation.topAnchor.constraint(equalTo: imgLocation.topAnchor, constant: 0),
            labelLocation.bottomAnchor.constraint(equalTo: imgLocation.bottomAnchor, constant: 0),
            
            dividerView.trailingAnchor.constraint(equalTo: statusStackView.trailingAnchor),
            dividerView.leadingAnchor.constraint(equalTo: statusStackView.leadingAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 1),
            dividerView.bottomAnchor.constraint(equalTo: statusStackView.topAnchor, constant: -8),
            dividerView.topAnchor.constraint(equalTo: labelPermonth.bottomAnchor, constant: 8),
            
            
            
            labelFrom.leadingAnchor.constraint(equalTo: statusStackView.leadingAnchor),
            
            labelPermonth.leadingAnchor.constraint(equalTo: labelFrom.trailingAnchor, constant: 2),
            labelPermonth.topAnchor.constraint(equalTo: labelType.bottomAnchor, constant: 8),
            labelPermonth.centerYAnchor.constraint(equalTo: labelFrom.centerYAnchor),
            labelType.leadingAnchor.constraint(equalTo: statusStackView.leadingAnchor),
            
            labelPrice.trailingAnchor.constraint(equalTo: statusStackView.trailingAnchor),
            labelPrice.bottomAnchor.constraint(equalTo: labelPermonth.bottomAnchor),
            
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            
            
            imgHouse.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0),
            imgHouse.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            imgHouse.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0),
            imgHouse.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -66),
            
            shadowView.topAnchor.constraint(equalTo: containerView.topAnchor),
            shadowView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            shadowView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            shadowView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
           
            
            favContainerView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            favContainerView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            favContainerView.widthAnchor.constraint(equalToConstant: 35),
            favContainerView.heightAnchor.constraint(equalToConstant: 35),
            
            contentInfo.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0),
            contentInfo.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0),
            contentInfo.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0),
            contentInfo.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            
            
            statusStackView.trailingAnchor.constraint(equalTo: contentInfo.trailingAnchor, constant: -15),
            statusStackView.leadingAnchor.constraint(equalTo: contentInfo.leadingAnchor, constant: 15),
            statusStackView.bottomAnchor.constraint(equalTo: contentInfo.bottomAnchor, constant: -15),
            
           
            
            imgFav.trailingAnchor.constraint(equalTo: favContainerView.trailingAnchor, constant: -9),
            imgFav.leadingAnchor.constraint(equalTo: favContainerView.leadingAnchor, constant: 9),
            imgFav.topAnchor.constraint(equalTo: favContainerView.topAnchor, constant: 9),
            imgFav.bottomAnchor.constraint(equalTo: favContainerView.bottomAnchor, constant: -9),
            
            containerView.heightAnchor.constraint(equalTo: self.heightAnchor),
          
            
            
            
        ])
        
    }
}
