// ImageDelaunay Created by Abhishek Joshi
// Based on TriangleView.swift Created by Alex Littlejohn

import UIKit

class ImageDelaunayView: UIView {
    var cellNumber: Int = 80
    var scalew: Double = 1.0
    var scaleh: Double = 1.0
    var image: UIImage?
    
    convenience init(frame: CGRect, image: UIImage, cellSize: Int = 80, scaleWidth: Double = 1.0, scaleHeight: Double = 1.0) throws {
        self.init(frame: frame)
        self.cellNumber = cellSize
        self.scalew = scaleWidth
        self.scaleh = scaleHeight
        self.image = image
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ImageDelaunayView.tapped))
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let vertices = generateVertices(bounds.size, cellSize: CGFloat(self.cellNumber)) 
        
        let triangles = Delaunay().triangulate(vertices)
        
        for triangle in triangles {
            let triangleLayer = CAShapeLayer()
            triangleLayer.path = triangle.toPath()
            
            let centerX = triangle.centroid.x
            let centerY = triangle.centroid.y

            let xPoint = Int(Double(centerX)*self.scalew)
            let yPoint = Int(Double(centerY)*self.scaleh)
            
            /*
            if let col = getPixelColorValues(image: image!, point: CGPoint(x: xPoint, y: yPoint)) {
                triangleLayer.fillColor = col.cgColor
            }
            else {
                triangleLayer.fillColor = UIColor.white.cgColor
            }
            */
            
            guard let col = getPixelColorValues(image: image!, point: CGPoint(x: xPoint, y: yPoint)) else {
                triangleLayer.fillColor = UIColor.white.cgColor
                triangleLayer.backgroundColor = UIColor.white.cgColor
                layer.addSublayer(triangleLayer)
                
                continue
            }
            
            triangleLayer.fillColor = col.cgColor
            
            triangleLayer.backgroundColor = UIColor.white.cgColor
            
            layer.addSublayer(triangleLayer)
        }
    }
}
