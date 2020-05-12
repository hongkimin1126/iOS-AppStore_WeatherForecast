//
//  FirstTableViewCell.swift
//  WeatherForecast
//
//  Created by 신용철 on 2020/03/06.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    let imgView = UIImageView()
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        selectionStyle = .none
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        
        addSubviews([imgView, label, label2, label3])
        imgView.layout.top().leading(constant: 10)
        imgView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        label.layout.top(equalTo: imgView.topAnchor).trailing(constant: -15).leading(equalTo: imgView.trailingAnchor, constant: 10)
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        label2.layout.leading(equalTo: imgView.leadingAnchor).trailing(equalTo: label.trailingAnchor).top(equalTo: label.bottomAnchor, constant: 10)
        label2.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .vertical)
        
        label3.layout.leading(equalTo: label2.leadingAnchor).trailing().top(equalTo: label2.bottomAnchor, constant: 10).bottom()
        
        label3.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .vertical)
        
        
        label.text = "label"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .white
        
        label2.text = "label2"
        label2.font = UIFont.systemFont(ofSize: 20, weight: .light)
        label2.textColor = .white
        
        label3.text = "label3"
        label3.font = UIFont.systemFont(ofSize: 100, weight: .ultraLight)
        label3.textColor = .white
        
        imgView.image = UIImage(named: "SKY_S01")
    }
}
