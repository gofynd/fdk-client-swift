

import Foundation
public extension PlatformClient {
    /*
         Model: ManifestDetailItem
         Used By: Order
     */

    class ManifestDetailItem: Codable {
        public var invoiceId: String?

        public var shipmentId: String?

        public var orderId: String?

        public var itemQty: Int?

        public var awb: String?

        public enum CodingKeys: String, CodingKey {
            case invoiceId = "invoice_id"

            case shipmentId = "shipment_id"

            case orderId = "order_id"

            case itemQty = "item_qty"

            case awb
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String? = nil, shipmentId: String? = nil) {
            self.invoiceId = invoiceId

            self.shipmentId = shipmentId

            self.orderId = orderId

            self.itemQty = itemQty

            self.awb = awb
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemQty = try container.decode(Int.self, forKey: .itemQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awb = try container.decode(String.self, forKey: .awb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(awb, forKey: .awb)
        }
    }
}
