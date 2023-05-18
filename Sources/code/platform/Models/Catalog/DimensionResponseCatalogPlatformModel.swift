

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var unit: String

        public var isDefault: Bool

        public var length: Double

        public var height: Double

        public var width: Double

        public enum CodingKeys: String, CodingKey {
            case unit

            case isDefault = "is_default"

            case length

            case height

            case width
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.unit = unit

            self.isDefault = isDefault

            self.length = length

            self.height = height

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            length = try container.decode(Double.self, forKey: .length)

            height = try container.decode(Double.self, forKey: .height)

            width = try container.decode(Double.self, forKey: .width)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var unit: String

        public var isDefault: Bool

        public var length: Double

        public var height: Double

        public var width: Double

        public enum CodingKeys: String, CodingKey {
            case unit

            case isDefault = "is_default"

            case length

            case height

            case width
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.unit = unit

            self.isDefault = isDefault

            self.length = length

            self.height = height

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            length = try container.decode(Double.self, forKey: .length)

            height = try container.decode(Double.self, forKey: .height)

            width = try container.decode(Double.self, forKey: .width)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}
