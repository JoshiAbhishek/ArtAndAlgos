// SceneConfig Created by Abhishek Joshi

import SpriteKit
import PlaygroundSupport

public func createImageArt(numCells: Int, fileTitle: String = "flower") -> SKView {
    let view = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
    view.showsFPS = true

    PlaygroundPage.current.liveView = view
    
    var title = fileTitle
    if title != "flower" && title != "mountain" && title != "city" {
        title = "flower"
    }
    
    guard let sample = Bundle.main.path(forResource: title, ofType: "jpg") else {
        return view
    }
    
    guard let image = UIImage(contentsOfFile: sample) else {
        return view
    }
    
    let width = Double(image.size.width)
    let height = Double(image.size.height)
    
    let scalew = Double(width) / Double(view.bounds.width)
    let scaleh = Double(height) / Double(view.bounds.height)
    
    do {
        let delaunayView = try ImageDelaunayView(frame: view.bounds, image: image, cellSize: numCells, scaleWidth: scalew, scaleHeight: scaleh)
        view.addSubview(delaunayView)
    }
    catch {
        print("Unexpected error: \(error).")
    }
    
    return view
}
