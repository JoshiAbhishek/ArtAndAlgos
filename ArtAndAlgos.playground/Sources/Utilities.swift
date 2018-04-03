//  Utilities Created by Alex Littlejohn

import UIKit
import GameplayKit

extension Triangle {
    public func toPath() -> CGPath {
        
        let path = CGMutablePath()
        let point1 = vertex1.pointValue()
        let point2 = vertex2.pointValue()
        let point3 = vertex3.pointValue()
        
        path.move(to: point1)
        path.addLine(to: point2)
        path.addLine(to: point3)
        path.addLine(to: point1)
        
        path.closeSubpath()
        
        return path
    }
    
    public func toCirclePath() -> CGPath {
        let path = CGMutablePath()
        let center = centroid.pointValue()
        let point1 = vertex1.pointValue()
        //let point2 = vertex2.pointValue()
        //let point3 = vertex3.pointValue()
        
        let xDiff = pow(Double(center.x) - Double(point1.x), 2)
        let yDiff = pow(Double(center.y) - Double(point1.y), 2)
        
        let diff = Double(xDiff + yDiff).squareRoot()
        
        path.addArc(center: center, radius: CGFloat(diff), startAngle: 0.0, endAngle: 360 * .pi / 180, clockwise:true)
        
        path.closeSubpath()
        
        return path
    }
}

// Generate set of vertices for our triangulation to use
public func generateVertices(_ size: CGSize, cellSize: CGFloat, variance: CGFloat = 0.75, seed: UInt64 = numericCast(arc4random())) -> [Vertex] {
    
    // How many cells we're going to have on each axis (pad by 2 cells on each edge)
    let cellsX = (size.width + 4 * cellSize) / cellSize
    let cellsY = (size.height + 4 * cellSize) / cellSize
    
    // figure out the bleed widths to center the grid
    let bleedX = ((cellsX * cellSize) - size.width)/2
    let bleedY = ((cellsY * cellSize) - size.height)/2
    
    let _variance = cellSize * variance / 4
    
    var points = [Vertex]()
    let minX = -bleedX
    let maxX = size.width + bleedX
    let minY = -bleedY
    let maxY = size.height + bleedY
    
    let generator = GKLinearCongruentialRandomSource(seed: seed)
    
    for i in stride(from: minX, to: maxX, by: cellSize) {
        for j in stride(from: minY, to: maxY, by: cellSize) {
            
            let x = i + cellSize/2 + CGFloat(generator.nextUniform()) + CGFloat.random(-_variance, _variance)
            let y = j + cellSize/2 + CGFloat(generator.nextUniform()) + CGFloat.random(-_variance, _variance)
            
            points.append(Vertex(x: Double(x), y: Double(y)))
        }
    }
    
    return points
}

/*
extension Vertex {
    func pointValue() -> CGPoint {
        return CGPoint(x: x, y: y)
    }
}
*/

extension Double {
    public static func random() -> Double {
        return Double(arc4random()) / 0xFFFFffff
    }
    
    public static func random(_ min: Double, _ max: Double) -> Double {
        return Double.random() * (max - min) + min
    }
}

extension CGFloat {
    public static func random(_ min: CGFloat, _ max: CGFloat) -> CGFloat {
        return CGFloat(Double.random(Double(min), Double(max)))
    }
}

extension UIColor {
    public func randomColor() -> UIColor {
        let hue = CGFloat( Double.random() )  // 0.0 to 1.0
        let saturation: CGFloat = 0.5  // 0.5 to 1.0, away from white
        let brightness: CGFloat = 1.0  // 0.5 to 1.0, away from black
        let color = UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
        return color
    }
}
