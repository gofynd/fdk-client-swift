

import Foundation
public extension PlatformClient {
    /*
         Model: AddCartRequest
         Used By: Cart
     */

    class AddCartRequest: Codable {
        public var items: [AddProductCart]?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case items

            case meta
        }

        public init(items: [AddProductCart]? = nil, meta: [String: Any]? = nil) {
            self.items = items

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AddProductCart].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
