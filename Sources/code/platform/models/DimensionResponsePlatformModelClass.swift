

import Foundation
public extension PlatformClient {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var height: Double

        public var width: Double

        public var length: Double

        public var unit: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case height

            case width

            case length

            case unit

            case isDefault = "is_default"
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.height = height

            self.width = width

            self.length = length

            self.unit = unit

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            height = try container.decode(Double.self, forKey: .height)

            width = try container.decode(Double.self, forKey: .width)

            length = try container.decode(Double.self, forKey: .length)

            unit = try container.decode(String.self, forKey: .unit)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
