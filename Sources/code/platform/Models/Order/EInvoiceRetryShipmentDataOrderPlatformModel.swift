

import Foundation

public extension PlatformClient.Order {
    /*
         Model: EInvoiceRetryShipmentData
         Used By: Order
     */

    class EInvoiceRetryShipmentData: Codable {
        public var einvoiceType: String?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case einvoiceType = "einvoice_type"

            case shipmentId = "shipment_id"
        }

        public init(einvoiceType: String? = nil, shipmentId: String? = nil) {
            self.einvoiceType = einvoiceType

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                einvoiceType = try container.decode(String.self, forKey: .einvoiceType)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(einvoiceType, forKey: .einvoiceType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: EInvoiceRetryShipmentData
         Used By: Order
     */

    class EInvoiceRetryShipmentData: Codable {
        public var einvoiceType: String?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case einvoiceType = "einvoice_type"

            case shipmentId = "shipment_id"
        }

        public init(einvoiceType: String? = nil, shipmentId: String? = nil) {
            self.einvoiceType = einvoiceType

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                einvoiceType = try container.decode(String.self, forKey: .einvoiceType)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(einvoiceType, forKey: .einvoiceType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
