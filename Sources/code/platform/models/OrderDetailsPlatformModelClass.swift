

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDetails
         Used By: Order
     */

    class OrderDetails: Codable {
        public var createdAt: String?

        public var fyndOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case fyndOrderId = "fynd_order_id"
        }

        public init(createdAt: String? = nil, fyndOrderId: String? = nil) {
            self.createdAt = createdAt

            self.fyndOrderId = fyndOrderId
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
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
