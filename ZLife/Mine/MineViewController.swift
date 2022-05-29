//
//  MeViewController.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/1.
//

import UIKit
import SnapKit

//MARK: 我的页面

class MineViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configUI()
    }
    
    func configUI() {
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 6
        layout.minimumInteritemSpacing = 8
        let view = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        view.backgroundColor = .clear
        view.delegate = self
        view.dataSource = self
        view.register(MineTopUserInfoViewCell.self, forCellWithReuseIdentifier: "MineTopUserInfoViewCell")
        view.register(MineUserToolViewCell.self, forCellWithReuseIdentifier: "MineUserToolViewCell")
        return view
    }()
    
}

//MARK: UICollectionViewDelegate && UICollectionViewDataSource

extension MineViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 50
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell: MineTopUserInfoViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MineTopUserInfoViewCell", for: indexPath) as! MineTopUserInfoViewCell
            cell.tapEventCallback = {
                print("此处处理cell的点击事件")
            }
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MineUserToolViewCell", for: indexPath)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 12, bottom: 10, right: 12)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: kScreen.width() - 2, height: 200)
        } else {
            return CGSize(width: (kScreen.width() - 48) / 4, height: 60)
        }
    }
    
}
