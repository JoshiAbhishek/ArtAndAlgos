/*:
 "Computational Geometry" is a branch of computer science that is all about applying algorithms to geometric problems.
 

 Basically, it's using code to draw points and lines according to concepts in geometry, which can produce some really cool diagrams and shapes.
 
 
 In this Playground, we will use an algorithm for a "Delaunay Triangulation" to create patterns that, based on your tastes, can be called art (it's all in the eye of the beholder, of course).
 */
import UIKit
import PlaygroundSupport

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

//: [Next](@next)
