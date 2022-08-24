

import Foundation
public extension ApplicationClient {
    /*
         Model: EntityMeta
         Used By: Feedback
     */
    class EntityMeta: Codable {
        public var orderId: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case type
        }

        public init(orderId: String? = nil, type: String? = nil) {
            self.orderId = orderId

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
