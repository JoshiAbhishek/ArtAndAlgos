//  Edge Created by Alex Littlejohn

public struct Edge {
    let vertex1: Vertex
    let vertex2: Vertex
}

extension Edge: Equatable {
    static public func ==(lhs: Edge, rhs: Edge) -> Bool {
        return lhs.vertex1 == rhs.vertex1 && lhs.vertex2 == rhs.vertex2 || lhs.vertex1 == rhs.vertex2 && lhs.vertex2 == rhs.vertex1
    }
}

extension Edge: Hashable {
    public var hashValue: Int {
        var seed = UInt(0)
        hash_combine(seed: &seed, value: UInt(bitPattern: vertex1.hashValue))
        hash_combine(seed: &seed, value: UInt(bitPattern: vertex2.hashValue))
        return Int(bitPattern: seed)
    }
}
