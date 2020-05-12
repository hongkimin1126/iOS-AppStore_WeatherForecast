//
//  ViewController.swift
//  WeatherForecast
//
//  Created by Giftbot on 2020/02/22.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController {
    let backgroundImageView = UIImageView()
    let headerView = UIView()
    let dimmingView = UIView()
    let headerLabel = UILabel()
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews([backgroundImageView, dimmingView, headerView, tableView])
        headerView.addSubview(headerLabel)
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none // 셀 구분 선 삭제
        tableView.showsVerticalScrollIndicator = false // 스크롤 삭제
        
        setupUI()
        autoLayout()
        
//        locationManager.delegate = self
//        tableView.dataSource = self
//        tableView.delegate = self
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: "FirstCell")
        tableView.register(SecondTableViewCell.self, forCellReuseIdentifier: "SecondCell")
    }
}
   

extension ViewController {
    
    func setupUI(){
        backgroundImageView.image = UIImage(named: "sunny")
        
        headerView.backgroundColor = .clear
        
        headerLabel.text = "Label"
        headerLabel.textColor = .white
        headerLabel.textAlignment = .center
        headerLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        
        dimmingView.backgroundColor = .black
        dimmingView.alpha = 0.4
    }
    
    func autoLayout(){
        backgroundImageView.layout.top(equalTo: view.topAnchor).bottom(equalTo: view.bottomAnchor).leading(equalTo: view.leadingAnchor).trailing(equalTo: view.trailingAnchor)
        
        headerView.layout.top().leading().trailing()
        headerView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        headerLabel.layout.top().leading().trailing()
        
        tableView.layout.top(equalTo: headerView.bottomAnchor).bottom().leading().trailing()
        
        dimmingView.layout.top().top(equalTo: view.topAnchor).bottom(equalTo: view.bottomAnchor).leading(equalTo: view.leadingAnchor).trailing(equalTo: view.trailingAnchor)
    }
}


