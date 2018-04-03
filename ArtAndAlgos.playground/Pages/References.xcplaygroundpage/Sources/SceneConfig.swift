// SceneConfig Created by Abhishek Joshi

import SpriteKit
import PlaygroundSupport

public func createDelaunayPattern(numCells: Int, colorScheme: [UIColor]) -> SKView {
    let view = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
    view.showsFPS = true
    
    PlaygroundPage.current.liveView = view
    
    let delaunayView = RandomColorDelaunayTriangleView(frame: view.bounds, cellSize: numCells, colorScheme: colorScheme)
    view.addSubview(delaunayView)
    
    return view
}
