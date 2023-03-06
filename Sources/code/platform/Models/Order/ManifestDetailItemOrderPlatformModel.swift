

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestDetailItem
         Used By: Order
     */

    class ManifestDetailItem: Codable {
        public var awb: String?

        public var orderId: String?

        public var itemQty: Int?

        public var shipmentId: String?

        public var invoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case awb

            case orderId = "order_id"

            case itemQty = "item_qty"

            case shipmentId = "shipment_id"

            case invoiceId = "invoice_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String? = nil, shipmentId: String? = nil) {
            self.awb = awb

            self.orderId = orderId

            self.itemQty = itemQty

            self.shipmentId = shipmentId

            self.invoiceId = invoiceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                awb = try container.decode(String.self, forKey: .awb)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestDetailItem
         Used By: Order
     */

    class ManifestDetailItem: Codable {
        public var awb: String?

        public var orderId: String?

        public var itemQty: Int?

        public var shipmentId: String?

        public var invoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case awb

            case orderId = "order_id"

            case itemQty = "item_qty"

            case shipmentId = "shipment_id"

            case invoiceId = "invoice_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String? = nil, shipmentId: String? = nil) {
            self.awb = awb

            self.orderId = orderId

            self.itemQty = itemQty

            self.shipmentId = shipmentId

            self.invoiceId = invoiceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                awb = try container.decode(String.self, forKey: .awb)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
        }
    }
}
