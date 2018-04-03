/*:
 A Delaunay triangulation is essentially where you form triangles from a given set of points so that no point is inside any triangle's circumcircle.
 
 A circumcircle is just a circle that passes through all of the vertices of a polygon, which in our case, is a triangle.
 
 In addition, a circumcircle in a Delaunay triangulation does not have any points inside of it; the circle's boundary only has the points of a triangle.
 
 Using these properties, we try to form triangles with edges between the set of points, eventually creating a Delaunay triangulation once all of the points are a part of a triangle.
 
 The code below runs a Delaunay triangulation for a randomly generated set of vertices, and shows the triangles formed, along with their circumcircles!
 
  You can also click on the pattern to produce a new triangulation!

 */
//#-hidden-code
import UIKit
import SpriteKit
import PlaygroundSupport
//#-end-hidden-code

class GeneralDelaunayTriangleView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    //#-hidden-code
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(GeneralDelaunayTriangleView.tapped))
        addGestureRecognizer(tapGesture)
    }
    @objc func tapped() {
        if let sublayers = layer.sublayers {
            for sublayer in sublayers {
                sublayer.removeFromSuperlayer()
            }
        }
        setNeedsLayout()
        layoutIfNeeded()
    }
    //#-end-hidden-code

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.backgroundColor = UIColor.white.cgColor
        
        //Creates vertices for the triangles in a Delaunay Triangulation
        let vertices = generateVertices(bounds.size, cellSize: /*#-editable-code*/200/*#-end-editable-code*/)
        
        //Creates triangles, according to the Delaunay Triangulation algorithm
        let triangles = Delaunay().triangulate(vertices)
        
        //Adds each circumcircle and triangle to the Playground's view
        for triangle in triangles {
            //Draw circumcircle
            let circleLayer = CAShapeLayer()
            circleLayer.path = triangle.toCirclePath()
            //#-hidden-code
            circleLayer.strokeColor = UIColor.black.cgColor
            circleLayer.lineWidth = 5.0
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.backgroundColor = UIColor.white.cgColor
            //#-end-hidden-code
            layer.addSublayer(circleLayer)
            
            //Draw triangle
            let triangleLayer = CAShapeLayer()
            triangleLayer.path = triangle.toPath()
            //#-hidden-code
            triangleLayer.strokeColor = UIColor.red.cgColor
            triangleLayer.lineWidth = 7.0
            triangleLayer.fillColor = UIColor.clear.cgColor
            triangleLayer.backgroundColor = UIColor.white.cgColor
            //#-end-hidden-code
            layer.addSublayer(triangleLayer)
        }
    }
}

/*:
The following code just sets the Playground's view to a new GeneralDelaunayTriangleView, which we defined above
*/

let view = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
view.showsFPS = true

PlaygroundPage.current.liveView = view

let delaunayView = GeneralDelaunayTriangleView(frame: view.bounds)
view.addSubview(delaunayView)

//: [Next](@next)
