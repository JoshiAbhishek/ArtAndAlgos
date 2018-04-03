// ColorExtractor Created by Abhishek Joshi

import UIKit
import SpriteKit
import PlaygroundSupport
import Foundation

public func getPixelColorValues(image: UIImage, point: CGPoint) -> UIColor? {
    let width = Int(image.size.width)
    let height = Int(image.size.height)
    let x = Int(point.x)
    let y = Int(point.y)
    
    guard x < width && y < height else {
        return nil
    }
    guard let cfData:CFData = image.cgImage?.dataProvider?.data, let pointer = CFDataGetBytePtr(cfData) else {
        return nil
    }
    let bytesPerPixel = 4
    let offset = (x + y * width) * bytesPerPixel
    
    let r = CGFloat(pointer[offset]) / CGFloat(255.0)
    let g = CGFloat(pointer[offset+1]) / CGFloat(255.0)
    let b = CGFloat(pointer[offset+2]) / CGFloat(255.0)
    let a = CGFloat(pointer[offset+3]) / CGFloat(255.0)
    
    return UIColor(red: r, green: g, blue: b, alpha: a)
}
