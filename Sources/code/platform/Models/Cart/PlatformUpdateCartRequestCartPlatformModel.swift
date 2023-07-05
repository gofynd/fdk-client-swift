

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformUpdateCartRequest
         Used By: Cart
     */

    class PlatformUpdateCartRequest: Codable {
        public var operation: String

        public var items: [UpdateProductCart]?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case operation

            case items

            case userId = "user_id"
        }

        public init(items: [UpdateProductCart]? = nil, operation: String, userId: String? = nil) {
            self.operation = operation

            self.items = items

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            operation = try container.decode(String.self, forKey: .operation)

            do {
                items = try container.decode([UpdateProductCart].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(operation, forKey: .operation)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
