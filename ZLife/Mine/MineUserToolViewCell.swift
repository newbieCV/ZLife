//
//  MineUserToolViewCell.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/7.
//

import UIKit

//MARK: 我的页面，下方工具栏cell

class MineUserToolViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(tapEvent))
        contentView.addGestureRecognizer(tapGes)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var viewModel: MineUserToolViewModel = MineUserToolViewModel(text: "", icon: "", url: "")
    
    func setupData(_ data: MineUserToolViewModel) {
        self.viewModel = data
        title.text = data.text
    }
    
    // 点击回调
    var tapEventCallback: ((_ model: MineUserToolViewModel)->())?
    
    @objc private func tapEvent() {
        if let tapEventCallback = tapEventCallback {
            tapEventCallback(viewModel)
        }
    }
    
    func configUI() {
        contentView.backgroundColor = .clear
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.borderWidth = 0.5
        contentView.layer.masksToBounds = true
        
        contentView.addSubview(title)
        title.snp.makeConstraints { make in
            make.centerY.centerX.equalTo(self)
            make.height.equalTo(self)
            make.width.equalTo(self)
        }
    }
    
    private var title : UILabel = {
        let label = UILabel.init()
        label.textColor = UIColor.red
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
}
