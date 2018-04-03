/*:
 With our Delaunay triangulation, we can also turn images in to works of art. By finding the centroid (center) of a triangle in the pattern, we can find the color at that relative point in an image and change the fill for that triangle.
 
 Try out the code below with different images for the fileTitle parameter: "mountain," "flower," and "city!"
 
 If the image doesn't show or an error occurs, try running the code a few times (it can be finicky).
 */
//#-hidden-code
import Foundation
import SpriteKit
import UIKit
import PlaygroundSupport
//#-end-hidden-code

let trianglesScale = /*#-editable-code*/80/*#-end-editable-code*/

//#-code-completion(everything, hide, [values], trianglesScale, blueColors, Circumcircle, Delaunay, Edge, greenColors, redColors, Triangle, Vertex)
//#-code-completion(description, show, "mountain", "flower", "city")
createImageArt(numCells: trianglesScale, fileTitle: /*#-editable-code*/"flower"/*#-end-editable-code*/)

//: [Next](@next)
