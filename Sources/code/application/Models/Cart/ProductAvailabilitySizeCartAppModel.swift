

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: ProductAvailabilitySize
         Used By: Cart
     */
    class ProductAvailabilitySize: Codable {
        public var meta: [String: Any]?

        public var value: String?

        public var customJson: [String: Any]?

        public var isAvailable: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case value

            case customJson = "_custom_json"

            case isAvailable = "is_available"

            case display
        }

        public init(display: String? = nil, isAvailable: Bool? = nil, meta: [String: Any]? = nil, value: String? = nil, customJson: [String: Any]? = nil) {
            self.meta = meta

            self.value = value

            self.customJson = customJson

            self.isAvailable = isAvailable

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
