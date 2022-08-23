

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInvoice1
         Used By: Order
     */

    class ShipmentInvoice1: Codable {
        public var labelUrl: String

        public var updatedDate: Int?

        public var invoiceUrl: String

        public var storeInvoiceId: String

        public enum CodingKeys: String, CodingKey {
            case labelUrl = "label_url"

            case updatedDate = "updated_date"

            case invoiceUrl = "invoice_url"

            case storeInvoiceId = "store_invoice_id"
        }

        public init(invoiceUrl: String, labelUrl: String, storeInvoiceId: String, updatedDate: Int? = nil) {
            self.labelUrl = labelUrl

            self.updatedDate = updatedDate

            self.invoiceUrl = invoiceUrl

            self.storeInvoiceId = storeInvoiceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            labelUrl = try container.decode(String.self, forKey: .labelUrl)

            do {
                updatedDate = try container.decode(Int.self, forKey: .updatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)

            storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)

            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)

            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)

            try? container.encodeIfPresent(storeInvoiceId, forKey: .storeInvoiceId)
        }
    }
}
