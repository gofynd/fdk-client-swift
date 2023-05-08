

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var width: Double

        public var unit: String

        public var isDefault: Bool

        public var length: Double

        public var height: Double

        public enum CodingKeys: String, CodingKey {
            case width

            case unit

            case isDefault = "is_default"

            case length

            case height
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.width = width

            self.unit = unit

            self.isDefault = isDefault

            self.length = length

            self.height = height
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            width = try container.decode(Double.self, forKey: .width)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            length = try container.decode(Double.self, forKey: .length)

            height = try container.decode(Double.self, forKey: .height)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(height, forKey: .height)
        }
    }
}
