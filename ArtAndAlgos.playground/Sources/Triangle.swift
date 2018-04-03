//  Triangle Created by Alex Littlejohn

import CoreGraphics

/// A simple struct representing 3 vertices
public struct Triangle {
    
    public init(vertex1: Vertex, vertex2: Vertex, vertex3: Vertex, centroid: Vertex) {
        self.vertex1 = vertex1
        self.vertex2 = vertex2
        self.vertex3 = vertex3
        self.centroid = centroid
    }
    
    public let vertex1: Vertex
    public let vertex2: Vertex
    public let vertex3: Vertex
    public let centroid: Vertex
    
    public func v1() -> CGPoint {
        return vertex1.pointValue()
    }
    
    public func v2() -> CGPoint {
        return vertex2.pointValue()
    }
    
    public func v3() -> CGPoint {
        return vertex3.pointValue()
    }
    
    public func c() -> CGPoint {
        return centroid.pointValue()
    }
}

