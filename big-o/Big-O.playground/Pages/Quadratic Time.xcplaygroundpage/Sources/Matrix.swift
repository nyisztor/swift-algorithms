import Foundation

public struct Matrix<E> {
    let rows: Int, columns: Int
    var grid: [E]
    
    public init(rows: Int, columns: Int, repeating: E) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: repeating, count: rows * columns)
    }
    
    public func isValidIndex(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    public subscript(row: Int, column: Int) -> E {
        get {
            assert(isValidIndex(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(isValidIndex(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
