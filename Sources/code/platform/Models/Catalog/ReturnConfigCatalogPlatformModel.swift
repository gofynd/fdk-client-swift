

import Foundation

public extension PlatformClient.Catalog {
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

public extension PlatformClient.ApplicationClient.Catalog {
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
