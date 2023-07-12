

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestItemDetails
         Used By: Order
     */

    class ManifestItemDetails: Codable {
        public var awb: String?

        public var orderId: String

        public var itemQty: Int?

        public var shipmentId: String

        public var shipmentCreatedAt: String?

        public var invoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case awb

            case orderId = "order_id"

            case itemQty = "item_qty"

            case shipmentId = "shipment_id"

            case shipmentCreatedAt = "shipment_created_at"

            case invoiceId = "invoice_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String, shipmentCreatedAt: String? = nil, shipmentId: String) {
            self.awb = awb

            self.orderId = orderId

            self.itemQty = itemQty

            self.shipmentId = shipmentId

            self.shipmentCreatedAt = shipmentCreatedAt

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

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                itemQty = try container.decode(Int.self, forKey: .itemQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

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

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestItemDetails
         Used By: Order
     */

    class ManifestItemDetails: Codable {
        public var awb: String?

        public var orderId: String

        public var itemQty: Int?

        public var shipmentId: String

        public var shipmentCreatedAt: String?

        public var invoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case awb

            case orderId = "order_id"

            case itemQty = "item_qty"

            case shipmentId = "shipment_id"

            case shipmentCreatedAt = "shipment_created_at"

            case invoiceId = "invoice_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String, shipmentCreatedAt: String? = nil, shipmentId: String) {
            self.awb = awb

            self.orderId = orderId

            self.itemQty = itemQty

            self.shipmentId = shipmentId

            self.shipmentCreatedAt = shipmentCreatedAt

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

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                itemQty = try container.decode(Int.self, forKey: .itemQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

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

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
        }
    }
}
