

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentBody
         Used By: OrderManage
     */

    class ShipmentBody: Codable {
        public var storeInvoiceId: String?

        public var bags: [Int]?

        public var reason: [Int]?

        public var dataUpdate: [String: Any]?

        public var products: [ProductDetail]?

        public enum CodingKeys: String, CodingKey {
            case storeInvoiceId = "store_invoice_id"

            case bags

            case reason

            case dataUpdate = "data_update"

            case products
        }

        public init(bags: [Int]? = nil, dataUpdate: [String: Any]? = nil, products: [ProductDetail]? = nil, reason: [Int]? = nil, storeInvoiceId: String? = nil) {
            self.storeInvoiceId = storeInvoiceId

            self.bags = bags

            self.reason = reason

            self.dataUpdate = dataUpdate

            self.products = products
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([Int].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode([Int].self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dataUpdate = try container.decode([String: Any].self, forKey: .dataUpdate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([ProductDetail].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(dataUpdate, forKey: .dataUpdate)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }
}
