//
//  MovableContainerView.swift
//  Box42
//
//  Created by Chanhee Kim on 8/19/23.
//

import AppKit

class MovableContainerView: NSView {
    init() {
        super.init(frame: NSRect(x: 0, y: 0, width: 300, height: BoxSizeManager.shared.size.height))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func mouseDown(with event: NSEvent) {
        if let window = self.window {
            window.performDrag(with: event)
        }
    }
}
