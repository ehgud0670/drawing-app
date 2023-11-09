//
//  Rect.swift
//  DrawingApp
//
//  Created by 김도형 on 2023/11/09.
//

import UIKit

struct Rect {
    let size: CGSize
    let id: UUID
    private(set) var origin: CGPoint!
    
    init(window: CGRect, size: CGSize, id: UUID = UUID()) {
        self.size = size
        self.id = id
        self.origin = self.makeOrigin(window: window, rectSize: size)
    }
    
    private func makeOrigin(window: CGRect, rectSize size: CGSize) -> CGPoint {
        let xRange = window.origin.x ... window.width - size.width
        let yRange = window.origin.y ... window.height - size.height
        
        let originX = CGFloat.random(in: xRange)
        let originY = CGFloat.random(in: yRange)
        return CGPoint(x: originX, y: originY)
    }
}
