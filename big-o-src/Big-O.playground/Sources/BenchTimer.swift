import Foundation

//: Utility class used for performance measurements
import QuartzCore

public final class BenchTimer {
    // @inline(__always) optimizes for speed by telling the compiler to always inline the method, if possible
    @inline(__always) public static func measureBlock(executionCount: UInt = 10, closure: () -> Void) -> CFTimeInterval {
        var executionTimes: Double = 0
        for _ in 0..<executionCount {
            let startTime = CACurrentMediaTime()
            closure()
            let endTime = CACurrentMediaTime()
            executionTimes += (endTime - startTime)
        }
        return executionTimes / Double(executionCount)
    }
}

/*
 Displays formatted time
 This property provides a concise string representation of the time interval value which also includes the right unit of time, which ranges from ns to s.
 */
public extension CFTimeInterval {
    var formattedTime: String {
        return self >= 1000 ? String(Int(self)) + "s"
            : self >= 1 ? String(format: "%.3gs", self)
            : self >= 1e-3 ? String(format: "%.3gms", self * 1e3)
            : self >= 1e-6 ? String(format: "%.3gµs", self * 1e6)
            : self < 1e-9 ? "0s"
            : String(format: "%.3gns", self * 1e9)
    }
}
