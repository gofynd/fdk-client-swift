

import Foundation
public extension ApplicationClient {
    /*
         Model: Dimension
         Used By: Catalog
     */
    class Dimension: Codable {
        public var unit: String

        public var length: Double

        public var width: Double

        public var height: Double

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case unit

            case length

            case width

            case height

            case isDefault = "is_default"
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.unit = unit

            self.length = length

            self.width = width

            self.height = height

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            length = try container.decode(Double.self, forKey: .length)

            width = try container.decode(Double.self, forKey: .width)

            height = try container.decode(Double.self, forKey: .height)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
