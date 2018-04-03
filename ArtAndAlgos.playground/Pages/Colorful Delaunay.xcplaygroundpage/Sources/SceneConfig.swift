// SceneConfig Created by Abhishek Joshi

import SpriteKit
import PlaygroundSupport

public func createDelaunayPattern(numCells: Int, colorScheme: [UIColor], colorTheme: String? = nil) -> SKView {
    let view = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
    view.showsFPS = true

    PlaygroundPage.current.liveView = view
    
    let delaunayView = DelaunayTriangleView(frame: view.bounds, cellSize: numCells, colorScheme: colorScheme, colorTheme: colorTheme)
    view.addSubview(delaunayView)
    
    return view
}
