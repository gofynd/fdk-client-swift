

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ProductStatus
         Used By: Order
     */
    class ProductStatus: Codable {
        public var createdAt: String?

        public var value: String?

        public var hexCode: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case value

            case hexCode = "hex_code"

            case title
        }

        public init(createdAt: String? = nil, hexCode: String? = nil, title: String? = nil, value: String? = nil) {
            self.createdAt = createdAt

            self.value = value

            self.hexCode = hexCode

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                hexCode = try container.decode(String.self, forKey: .hexCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
