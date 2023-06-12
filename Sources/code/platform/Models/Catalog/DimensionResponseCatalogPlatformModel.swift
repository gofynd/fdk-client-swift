

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var length: Double

        public var width: Double

        public var unit: String

        public var isDefault: Bool

        public var height: Double

        public enum CodingKeys: String, CodingKey {
            case length

            case width

            case unit

            case isDefault = "is_default"

            case height
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.length = length

            self.width = width

            self.unit = unit

            self.isDefault = isDefault

            self.height = height
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            length = try container.decode(Double.self, forKey: .length)

            width = try container.decode(Double.self, forKey: .width)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            height = try container.decode(Double.self, forKey: .height)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(height, forKey: .height)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var length: Double

        public var width: Double

        public var unit: String

        public var isDefault: Bool

        public var height: Double

        public enum CodingKeys: String, CodingKey {
            case length

            case width

            case unit

            case isDefault = "is_default"

            case height
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.length = length

            self.width = width

            self.unit = unit

            self.isDefault = isDefault

            self.height = height
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            length = try container.decode(Double.self, forKey: .length)

            width = try container.decode(Double.self, forKey: .width)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            height = try container.decode(Double.self, forKey: .height)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(height, forKey: .height)
        }
    }
}
