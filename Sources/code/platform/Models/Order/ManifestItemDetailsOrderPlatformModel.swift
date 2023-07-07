

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestItemDetails
         Used By: Order
     */

    class ManifestItemDetails: Codable {
        public var shipmentId: String

        public var awb: String?

        public var shipmentCreatedAt: String?

        public var invoiceId: String?

        public var itemQty: Int?

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case awb

            case shipmentCreatedAt = "shipment_created_at"

            case invoiceId = "invoice_id"

            case itemQty = "item_qty"

            case orderId = "order_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String, shipmentCreatedAt: String? = nil, shipmentId: String) {
            self.shipmentId = shipmentId

            self.awb = awb

            self.shipmentCreatedAt = shipmentCreatedAt

            self.invoiceId = invoiceId

            self.itemQty = itemQty

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                awb = try container.decode(String.self, forKey: .awb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                itemQty = try container.decode(Int.self, forKey: .itemQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestItemDetails
         Used By: Order
     */

    class ManifestItemDetails: Codable {
        public var shipmentId: String

        public var awb: String?

        public var shipmentCreatedAt: String?

        public var invoiceId: String?

        public var itemQty: Int?

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case awb

            case shipmentCreatedAt = "shipment_created_at"

            case invoiceId = "invoice_id"

            case itemQty = "item_qty"

            case orderId = "order_id"
        }

        public init(awb: String? = nil, invoiceId: String? = nil, itemQty: Int? = nil, orderId: String, shipmentCreatedAt: String? = nil, shipmentId: String) {
            self.shipmentId = shipmentId

            self.awb = awb

            self.shipmentCreatedAt = shipmentCreatedAt

            self.invoiceId = invoiceId

            self.itemQty = itemQty

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                awb = try container.decode(String.self, forKey: .awb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                itemQty = try container.decode(Int.self, forKey: .itemQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
