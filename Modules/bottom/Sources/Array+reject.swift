import Foundation

extension Array {
    public func reject(_ isRejected: (Element) -> Bool) -> [Element] {
        return self.filter{ !isRejected($0) }
    }
}
