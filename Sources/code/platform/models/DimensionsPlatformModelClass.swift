

import Foundation
public extension PlatformClient {
    /*
         Model: Dimensions
         Used By: Order
     */

    class Dimensions: Codable {
        public var height: Int?

        public var unit: String?

        public var length: Int?

        public var isDefault: Bool?

        public var width: Int?

        public enum CodingKeys: String, CodingKey {
            case height

            case unit

            case length

            case isDefault = "is_default"

            case width
        }

        public init(height: Int? = nil, isDefault: Bool? = nil, length: Int? = nil, unit: String? = nil, width: Int? = nil) {
            self.height = height

            self.unit = unit

            self.length = length

            self.isDefault = isDefault

            self.width = width
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                height = try container.decode(Int.self, forKey: .height)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                length = try container.decode(Int.self, forKey: .length)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                width = try container.decode(Int.self, forKey: .width)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(height, forKey: .height)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(length, forKey: .length)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(width, forKey: .width)
        }
    }
}
