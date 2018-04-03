// SceneConfig Created by Abhishek Joshi

import UIKit
import PlaygroundSupport

public func computationalGeometrySetup() -> UIView {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 505.5, height: 541.5))
    view.backgroundColor = .white
    
    /*
     Image Source: "The Delaunay triangulation with all the circumcircles and their centers (in red)." by Matthias Kopsch https://en.wikipedia.org/wiki/File:Delaunay_circumcircles_centers.svg
     */
    
    if let sample = Bundle.main.path(forResource: "delaunay", ofType: "png") {
        let image = UIImage(contentsOfFile: sample)
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 505.5, height: 541.5))
        view.addSubview(imageView)
        
        imageView.image = image
    }
    
    PlaygroundPage.current.liveView = view
    
    return view
}
