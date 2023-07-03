

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestItemDetails
         Used By: Order
     */

    class ManifestItemDetails: Codable {
        public var itemQty: Int?

        public var awb: String?

        public var invoiceId: String?

        public var orderId: String

        public var shipmentCreatedAt: String?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case itemQty = "item_qty"

            case awb

            case invoiceId = "invoice_id"

            case orderId = "order_id"

            case shipmentCreatedAt = "shipment_created_at"

            case shipmentId = "shipment_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String, shipmentCreatedAt: String? = nil, shipmentId: String) {
            self.itemQty = itemQty

            self.awb = awb

            self.invoiceId = invoiceId

            self.orderId = orderId

            self.shipmentCreatedAt = shipmentCreatedAt

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestItemDetails
         Used By: Order
     */

    class ManifestItemDetails: Codable {
        public var itemQty: Int?

        public var awb: String?

        public var invoiceId: String?

        public var orderId: String

        public var shipmentCreatedAt: String?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case itemQty = "item_qty"

            case awb

            case invoiceId = "invoice_id"

            case orderId = "order_id"

            case shipmentCreatedAt = "shipment_created_at"

            case shipmentId = "shipment_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String, shipmentCreatedAt: String? = nil, shipmentId: String) {
            self.itemQty = itemQty

            self.awb = awb

            self.invoiceId = invoiceId

            self.orderId = orderId

            self.shipmentCreatedAt = shipmentCreatedAt

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
