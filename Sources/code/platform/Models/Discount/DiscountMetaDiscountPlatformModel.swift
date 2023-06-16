

import Foundation

public extension PlatformClient.Discount {
    /*
         Model: DiscountMeta
         Used By: Discount
     */

    class DiscountMeta: Codable {
        public var timer: Bool

        public var numberOfMinutes: Double

        public enum CodingKeys: String, CodingKey {
            case timer

            case numberOfMinutes = "number_of_minutes"
        }

        public init(numberOfMinutes: Double, timer: Bool) {
            self.timer = timer

            self.numberOfMinutes = numberOfMinutes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            timer = try container.decode(Bool.self, forKey: .timer)

            numberOfMinutes = try container.decode(Double.self, forKey: .numberOfMinutes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timer, forKey: .timer)

            try? container.encodeIfPresent(numberOfMinutes, forKey: .numberOfMinutes)
        }
    }
}
