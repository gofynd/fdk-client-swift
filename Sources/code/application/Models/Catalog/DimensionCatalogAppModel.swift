

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var isDefault: Bool

        public var unit: String

        public var height: Double

        public var width: Double

        public var length: Double

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case unit

            case height

            case width

            case length
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.isDefault = isDefault

            self.unit = unit

            self.height = height

            self.width = width

            self.length = length
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            unit = try container.decode(String.self, forKey: .unit)

            height = try container.decode(Double.self, forKey: .height)

            width = try container.decode(Double.self, forKey: .width)

            length = try container.decode(Double.self, forKey: .length)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(length, forKey: .length)
        }
    }
}
