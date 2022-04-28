

import Foundation
public extension PlatformClient {
    /*
         Model: OrderQuantity
         Used By: Catalog
     */

    class OrderQuantity: Codable {
        public var isSet: Bool?

        public var maximum: Int?

        public var minimum: Int?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case maximum

            case minimum
        }

        public init(isSet: Bool? = nil, maximum: Int? = nil, minimum: Int? = nil) {
            self.isSet = isSet

            self.maximum = maximum

            self.minimum = minimum
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maximum = try container.decode(Int.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minimum = try container.decode(Int.self, forKey: .minimum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(maximum, forKey: .maximum)

            try? container.encodeIfPresent(minimum, forKey: .minimum)
        }
    }
}
