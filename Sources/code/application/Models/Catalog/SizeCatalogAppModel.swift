

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: Size
         Used By: Catalog
     */
    class Size: Codable {
        public var quantity: Int?

        public var value: [String: Any]?

        public var display: [String: Any]?

        public var isAvailable: Bool?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case value

            case display

            case isAvailable = "is_available"
        }

        public init(display: [String: Any]? = nil, isAvailable: Bool? = nil, quantity: Int? = nil, value: [String: Any]? = nil) {
            self.quantity = quantity

            self.value = value

            self.display = display

            self.isAvailable = isAvailable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode([String: Any].self, forKey: .display)

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

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        }
    }
}
