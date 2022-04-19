import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ReturnConfig
         Used By: Catalog
     */

    class ReturnConfig: Codable {
        public var time: Int

        public var returnable: Bool

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case time

            case returnable

            case unit
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.time = time

            self.returnable = returnable

            self.unit = unit
        }

        public func duplicate() -> ReturnConfig {
            let dict = self.dictionary!
            let copy = ReturnConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            time = try container.decode(Int.self, forKey: .time)

            returnable = try container.decode(Bool.self, forKey: .returnable)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(returnable, forKey: .returnable)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
