//
//  CustomCorners.swift
//  SideSwiftUI
//
//  Created by Apple on 2021/9/3.
//

import SwiftUI

// 自定义圆角形状
struct CustomCorners: Shape {
    
    var corners: UIRectCorner
    var radius : CGFloat
    
    func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect,
                              byRoundingCorners: corners,
                                    cornerRadii:
                                        CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

