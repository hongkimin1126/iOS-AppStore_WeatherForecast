//
//  SecondTableViewCell.swift
//  WeatherForecast
//
//  Created by 신용철 on 2020/03/06.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let imgView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        backgroundColor = .clear
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(){
        addSubviews([label, label2, label3, label4 ,imgView])
        label.layout.top(constant: 10).bottom(constant: -10).trailing()
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 1000), for: .vertical)
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
        label.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .vertical)
        label.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
        
        label2.layout.trailing(equalTo: label.leadingAnchor, constant: -10).centerY(equalTo: label.centerYAnchor)
        
        label3.layout.top(constant: 22).leading(constant: 10)
        
        label3.trailingAnchor.constraint(lessThanOrEqualTo: imgView.leadingAnchor, constant: -10).isActive = true
        
        label4.layout.top(equalTo: label3.bottomAnchor, constant: 2).leading(equalTo: label3.leadingAnchor)
        label4.trailingAnchor.constraint(lessThanOrEqualTo: imgView.leadingAnchor, constant: -10).isActive = true

        imgView.layout.trailing(equalTo: label2.leadingAnchor, constant: -10).centerY(equalTo: label2.centerYAnchor)
        
        imgView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        label.text = "00"
        label.font = UIFont.systemFont(ofSize: 30, weight: .thin)
        label.textColor = .white
        
        label2.text = "label2"
        label2.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label2.textColor = .white
        
        label3.text = "label3"
        label3.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label3.textColor = .white
        
        label4.text = "label4"
        label4.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label4.textColor = .lightGray
        
        imgView.image = UIImage(named: "SKY_S01")
        
    }
}
