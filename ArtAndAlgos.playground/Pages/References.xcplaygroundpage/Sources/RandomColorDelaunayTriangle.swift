// RandomColorDelaunayTriangle Created by Abhishek Joshi
// Based on TriangleView.swift Created by Alex Littlejohn

import UIKit

class RandomColorDelaunayTriangleView: UIView {
    var cellNumber = 80
    var colorScheme: [UIColor]?
    
    convenience init(frame: CGRect, cellSize: Int = 80, colorScheme: [UIColor]? = [#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)]) {
        self.init(frame: frame)
        self.cellNumber = cellSize
        self.colorScheme = colorScheme
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
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(RandomColorDelaunayTriangleView.tapped))
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
            
            if let colorScheme = self.colorScheme as [UIColor]? {
                let rand = Int(arc4random_uniform(UInt32(colorScheme.count)))
                let color = colorScheme[rand]
                triangleLayer.fillColor = color.cgColor
            }
            else {
                triangleLayer.fillColor = UIColor().randomColor().cgColor
            }
            
            triangleLayer.backgroundColor = UIColor.clear.cgColor
            
            layer.addSublayer(triangleLayer)
        }
    }
}

