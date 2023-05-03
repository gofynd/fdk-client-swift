

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: ProductAvailabilitySize
         Used By: Cart
     */
    class ProductAvailabilitySize: Codable {
        public var value: String?

        public var display: String?

        public var isAvailable: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case display

            case isAvailable = "is_available"
        }

        public init(display: String? = nil, isAvailable: Bool? = nil, value: String? = nil) {
            self.value = value

            self.display = display

            self.isAvailable = isAvailable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        }
    }
}
