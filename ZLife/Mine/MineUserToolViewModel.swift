//
//  MineUserToolViewModel.swift
//  ZLife
//
//  Created by ByteDance on 2022/8/11.
//

import Foundation

struct MineUserToolViewModel: Codable {
    let text: String
    let icon: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case text, icon, url
    }
}
