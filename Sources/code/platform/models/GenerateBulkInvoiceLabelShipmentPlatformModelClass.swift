

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateBulkInvoiceLabelShipment
         Used By: OrderInvoiceEngine
     */

    class GenerateBulkInvoiceLabelShipment: Codable {
        public var storeId: Double

        public var fromDate: String

        public var toDate: String

        public var documentType: String

        public var shipmentIds: [String]?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case fromDate = "from_date"

            case toDate = "to_date"

            case documentType = "document_type"

            case shipmentIds = "shipment_ids"
        }

        public init(documentType: String, fromDate: String, shipmentIds: [String]? = nil, storeId: Double, toDate: String) {
            self.storeId = storeId

            self.fromDate = fromDate

            self.toDate = toDate

            self.documentType = documentType

            self.shipmentIds = shipmentIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Double.self, forKey: .storeId)

            fromDate = try container.decode(String.self, forKey: .fromDate)

            toDate = try container.decode(String.self, forKey: .toDate)

            documentType = try container.decode(String.self, forKey: .documentType)

            do {
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(documentType, forKey: .documentType)

            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)
        }
    }
}
