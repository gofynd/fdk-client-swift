

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: ProductAvailabilitySize
         Used By: PosCart
     */
    class ProductAvailabilitySize: Codable {
        public var value: String?

        public var meta: [String: Any]?

        public var isAvailable: Bool?

        public var display: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case value

            case meta

            case isAvailable = "is_available"

            case display

            case customJson = "_custom_json"
        }

        public init(display: String? = nil, isAvailable: Bool? = nil, meta: [String: Any]? = nil, value: String? = nil, customJson: [String: Any]? = nil) {
            self.value = value

            self.meta = meta

            self.isAvailable = isAvailable

            self.display = display

            self.customJson = customJson
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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
