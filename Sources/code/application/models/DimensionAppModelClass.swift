

import Foundation
public extension ApplicationClient {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var unit: String

        public var height: Double

        public var length: Double

        public var isDefault: Bool

        public var width: Double

        public enum CodingKeys: String, CodingKey {
            case unit

            case height

            case length

            case isDefault = "is_default"

            case width
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.unit = unit

            self.height = height

            self.length = length

            self.isDefault = isDefault

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            height = try container.decode(Double.self, forKey: .height)

            length = try container.decode(Double.self, forKey: .length)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            width = try container.decode(Double.self, forKey: .width)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}
