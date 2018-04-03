/*:
 Now that we have established how to create a Delaunay triangulation, we can transform the scale of triangles shown in the pattern, and apply color schemes to create abstract art.
 
 Try changing the scale of triangles and color scheme values for the function below to produce different patterns!
 
 You can also click on the pattern to produce a new triangulation!

 */
//#-hidden-code
import Foundation
import SpriteKit
import PlaygroundSupport
//#-end-hidden-code
let trianglesScale = /*#-editable-code*/50/*#-end-editable-code*/
let blueColorScheme = [#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)]
let greenColorScheme = [#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]
let redColorScheme = [#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)]
let purpleColorScheme = [#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)]
let customColorScheme = [/*#-editable-code*/#colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)/*#-end-editable-code*/]

//#-code-completion(everything, hide, [values], trianglesScale, blueColors, Circumcircle, Delaunay, Edge, greenColors, redColors, Triangle, Vertex)
//#-code-completion(currentmodule, show, blueColorScheme, greenColorScheme, redColorScheme, purpleColorScheme, customColorScheme)
createDelaunayPattern(numCells: trianglesScale, colorScheme: /*#-editable-code*/blueColorScheme/*#-end-editable-code*/)

//: [Next](@next)
