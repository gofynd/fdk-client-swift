

import Foundation
public extension PlatformClient {
    /*
         Model: DimensionResponse
         Used By: Catalog
     */

    class DimensionResponse: Codable {
        public var unit: String

        public var width: Double

        public var length: Double

        public var isDefault: Bool

        public var height: Double

        public enum CodingKeys: String, CodingKey {
            case unit

            case width

            case length

            case isDefault = "is_default"

            case height
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            self.unit = unit

            self.width = width

            self.length = length

            self.isDefault = isDefault

            self.height = height
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unit = try container.decode(String.self, forKey: .unit)

            width = try container.decode(Double.self, forKey: .width)

            length = try container.decode(Double.self, forKey: .length)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            height = try container.decode(Double.self, forKey: .height)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(width, forKey: .width)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(height, forKey: .height)
        }
    }
}
