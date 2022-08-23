

import Foundation
public extension PlatformClient {
    /*
         Model: ReturnConfig
         Used By: Catalog
     */

    class ReturnConfig: Codable {
        public var unit: String

        public var time: Int

        public var returnable: Bool

        public enum CodingKeys: String, CodingKey {
            case unit

            case time

            case returnable
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.unit = unit

            self.time = time

            self.returnable = returnable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            time = try container.decode(Int.self, forKey: .time)

            returnable = try container.decode(Bool.self, forKey: .returnable)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(returnable, forKey: .returnable)
        }
    }
}
