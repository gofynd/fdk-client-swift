

import Foundation
public extension PlatformClient {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var height: Double

        public var isDefault: Bool

        public var width: Double

        public var length: Double

        public var unit: String

        public enum CodingKeys: String, CodingKey {
            case height

            case isDefault = "is_default"

            case width

            case length

            case unit
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.height = height

            self.isDefault = isDefault

            self.width = width

            self.length = length

            self.unit = unit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            height = try container.decode(Double.self, forKey: .height)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            width = try container.decode(Double.self, forKey: .width)

            length = try container.decode(Double.self, forKey: .length)

            unit = try container.decode(String.self, forKey: .unit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
