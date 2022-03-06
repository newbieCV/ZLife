//
//  MineUserToolViewCell.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/7.
//

import UIKit

class MineUserToolViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configUI() {
        contentView.backgroundColor = .clear
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.borderWidth = 0.5
        contentView.layer.masksToBounds = true
    }
}
