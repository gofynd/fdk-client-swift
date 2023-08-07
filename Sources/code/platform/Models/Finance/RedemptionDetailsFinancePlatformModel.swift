

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: RedemptionDetails
         Used By: Finance
     */

    class RedemptionDetails: Codable {
        public var staffId: String?

        public var createdAt: String?

        public var orderId: String?

        public var storeId: String?

        public var shipmentId: String?

        public var orderingChannel: String?

        public var amountDebited: Int?

        public var invoiceNumber: String?

        public enum CodingKeys: String, CodingKey {
            case staffId = "staff_id"

            case createdAt = "created_at"

            case orderId = "order_id"

            case storeId = "store_id"

            case shipmentId = "shipment_id"

            case orderingChannel = "ordering_channel"

            case amountDebited = "amount_debited"

            case invoiceNumber = "invoice_number"
        }

        public init(amountDebited: Int? = nil, createdAt: String? = nil, invoiceNumber: String? = nil, orderingChannel: String? = nil, orderId: String? = nil, shipmentId: String? = nil, staffId: String? = nil, storeId: String? = nil) {
            self.staffId = staffId

            self.createdAt = createdAt

            self.orderId = orderId

            self.storeId = storeId

            self.shipmentId = shipmentId

            self.orderingChannel = orderingChannel

            self.amountDebited = amountDebited

            self.invoiceNumber = invoiceNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                staffId = try container.decode(String.self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
                storeId = try container.decode(String.self, forKey: .storeId)

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
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountDebited = try container.decode(Int.self, forKey: .amountDebited)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceNumber = try container.decode(String.self, forKey: .invoiceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staffId, forKey: .staffId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(amountDebited, forKey: .amountDebited)

            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)
        }
    }
}
