//
//  CustomHouseListViewController.swift
//  HouseHunter
//
//  Created by KC on 28/05/2022.
//

import UIKit

class CustomHouseListViewController: UIViewController {
    
    
    let tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupViews()
        setupTableView()
    
    }
    
    private func setupTableView(){
        self.view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        ])
        
        tableView.dataSource = self
        tableView.delegate = self
        //tableView.allowsSelection = false
        tableView.frame = tableView.frame.inset(by: UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0))

        tableView.separatorStyle = .none
        tableView.register(CustomInfoTableViewCell.self, forCellReuseIdentifier: String(describing: CustomInfoTableViewCell.self))
    }
    
    private func setupViews(){
        //self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "House Hunt"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}


extension CustomHouseListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CustomHouseDetailController()
        vc.comparingHouseInfo = .getDummyHousingInfo()
        vc.currentHouseInfo = .getDummyCurrentHousingInfo()
        self.navigationController?.pushViewController(vc, animated: true)
        //self.present(vc, animated: true, completion: nil)

    }
}

extension CustomHouseListViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomInfoTableViewCell.self), for: indexPath) as? CustomInfoTableViewCell else{
            return UITableViewCell()
        }
        cell.bindData(.getDummyHousingInfo())

        return cell
    }
    
}


