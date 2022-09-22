

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInvoice1
         Used By: Order
     */

    class ShipmentInvoice1: Codable {
        public var invoiceUrl: String

        public var updatedDate: Int?

        public var storeInvoiceId: String

        public var labelUrl: String

        public enum CodingKeys: String, CodingKey {
            case invoiceUrl = "invoice_url"

            case updatedDate = "updated_date"

            case storeInvoiceId = "store_invoice_id"

            case labelUrl = "label_url"
        }

        public init(invoiceUrl: String, labelUrl: String, storeInvoiceId: String, updatedDate: Int? = nil) {
            self.invoiceUrl = invoiceUrl

            self.updatedDate = updatedDate

            self.storeInvoiceId = storeInvoiceId

            self.labelUrl = labelUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)

            do {
                updatedDate = try container.decode(Int.self, forKey: .updatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            labelUrl = try container.decode(String.self, forKey: .labelUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)

            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)

            try? container.encodeIfPresent(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
        }
    }
}
