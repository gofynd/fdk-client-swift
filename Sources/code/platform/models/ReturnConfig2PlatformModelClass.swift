

import Foundation
public extension PlatformClient {
    /*
         Model: ReturnConfig2
         Used By: Catalog
     */

    class ReturnConfig2: Codable {
        public var returnable: Bool

        public var unit: String

        public var time: Int

        public enum CodingKeys: String, CodingKey {
            case returnable

            case unit

            case time
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.returnable = returnable

            self.unit = unit

            self.time = time
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            returnable = try container.decode(Bool.self, forKey: .returnable)

            unit = try container.decode(String.self, forKey: .unit)

            time = try container.decode(Int.self, forKey: .time)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnable, forKey: .returnable)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(time, forKey: .time)
        }
    }
}
