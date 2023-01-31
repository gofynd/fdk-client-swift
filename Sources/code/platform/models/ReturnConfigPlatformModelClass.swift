

import Foundation
public extension PlatformClient {
    /*
         Model: ReturnConfig
         Used By: Catalog
     */

    class ReturnConfig: Codable {
        public var unit: String

        public var returnable: Bool

        public var time: Int

        public enum CodingKeys: String, CodingKey {
            case unit

            case returnable

            case time
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.unit = unit

            self.returnable = returnable

            self.time = time
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            returnable = try container.decode(Bool.self, forKey: .returnable)

            time = try container.decode(Int.self, forKey: .time)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(returnable, forKey: .returnable)

            try? container.encodeIfPresent(time, forKey: .time)
        }
    }
}
