

import Foundation
public extension ApplicationClient {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var length: Double

        public var isDefault: Bool

        public var height: Double

        public var unit: String

        public var width: Double

        public enum CodingKeys: String, CodingKey {
            case length

            case isDefault = "is_default"

            case height

            case unit

            case width
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.length = length

            self.isDefault = isDefault

            self.height = height

            self.unit = unit

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            length = try container.decode(Double.self, forKey: .length)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            height = try container.decode(Double.self, forKey: .height)

            unit = try container.decode(String.self, forKey: .unit)

            width = try container.decode(Double.self, forKey: .width)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}
