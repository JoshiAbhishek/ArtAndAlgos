// ColorThemes Created by Abhishek Joshi

import Foundation
import UIKit

public let blueColors: [(r:CGFloat, g:CGFloat, b:CGFloat)] = [(145.0, 13.0, 255.0), (72.0, 12.0, 232.0), (0.0, 0.0, 255.0), (12.0, 70.0, 232.0), (13.0, 140.0, 255.0)]

public let greenColors: [(r:CGFloat, g:CGFloat, b:CGFloat)] = [(13.0, 255.0, 150.0), (12.0, 232.0, 74.0), (0.0, 255.0, 0.0), (88.0, 232.0, 12.0), (182.0, 255.0, 13.0)]

public let redColors: [(r:CGFloat, g:CGFloat, b:CGFloat)] = [(255.0, 55.0, 0), (232.0, 28.0, 3.0), (255.0, 0.0, 0.0), (232.0, 12.0, 91.0), (255.0, 13.0, 188.0)]

extension UIColor {
    public func randomBlueThemeColor() -> UIColor {
        let rand = Int(arc4random_uniform(UInt32(blueColors.count)))
        
        let (r, g, b) = blueColors[rand]
        let color = UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
        
        return color
    }
    
    public func randomGreenThemeColor() -> UIColor {
        let rand = Int(arc4random_uniform(UInt32(greenColors.count)))
        
        let (r, g, b) = greenColors[rand]
        let color = UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
        
        return color
    }
    
    public func randomRedThemeColor() -> UIColor {
        let rand = Int(arc4random_uniform(UInt32(redColors.count)))
        
        let (r, g, b) = redColors[rand]
        let color = UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
        
        return color
    }
}
