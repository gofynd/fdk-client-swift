

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var width: Double

        public var height: Double

        public var length: Double

        public var unit: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case width

            case height

            case length

            case unit

            case isDefault = "is_default"
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.width = width

            self.height = height

            self.length = length

            self.unit = unit

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            width = try container.decode(Double.self, forKey: .width)

            height = try container.decode(Double.self, forKey: .height)

            length = try container.decode(Double.self, forKey: .length)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
