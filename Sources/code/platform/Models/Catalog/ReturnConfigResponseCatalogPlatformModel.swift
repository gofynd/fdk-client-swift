

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ReturnConfigResponse
         Used By: Catalog
     */

    class ReturnConfigResponse: Codable {
        public var returnable: Bool

        public var time: Int

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case returnable

            case time

            case unit
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.returnable = returnable

            self.time = time

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            returnable = try container.decode(Bool.self, forKey: .returnable)

            time = try container.decode(Int.self, forKey: .time)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnable, forKey: .returnable)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ReturnConfigResponse
         Used By: Catalog
     */

    class ReturnConfigResponse: Codable {
        public var returnable: Bool

        public var time: Int

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case returnable

            case time

            case unit
        }

        public init(returnable: Bool, time: Int, unit: String) {
            self.returnable = returnable

            self.time = time

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            returnable = try container.decode(Bool.self, forKey: .returnable)

            time = try container.decode(Int.self, forKey: .time)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnable, forKey: .returnable)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
