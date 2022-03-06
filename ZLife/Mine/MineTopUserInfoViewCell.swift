//
//  MineTopUserInfoViewCell.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/6.
//

import UIKit

class MineTopUserInfoViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(tapEvent))
        contentView.addGestureRecognizer(tapGes)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configUI() {
        contentView.backgroundColor = .clear
    }
    
    // 点击回调
    @objc var tapEventCallback: (()->())?
    
    @objc private func tapEvent() {
        if let tapEventCallback = tapEventCallback {
            tapEventCallback()
        }
    }
}
