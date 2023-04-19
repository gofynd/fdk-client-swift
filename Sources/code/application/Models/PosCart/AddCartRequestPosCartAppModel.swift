

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: AddCartRequest
         Used By: PosCart
     */
    class AddCartRequest: Codable {
        public var meta: [String: Any]?

        public var items: [AddProductCart]?

        public enum CodingKeys: String, CodingKey {
            case meta

            case items
        }

        public init(items: [AddProductCart]? = nil, meta: [String: Any]? = nil) {
            self.meta = meta

            self.items = items
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
                items = try container.decode([AddProductCart].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
