

import Foundation
public extension PlatformClient {
    /*
         Model: Invoice
         Used By: Billing
     */

    class Invoice: Codable {
        public var invoice: InvoiceDetails?

        public var invoiceItems: [InvoiceItems]?

        public enum CodingKeys: String, CodingKey {
            case invoice

            case invoiceItems = "invoice_items"
        }

        public init(invoice: InvoiceDetails? = nil, invoiceItems: [InvoiceItems]? = nil) {
            self.invoice = invoice

            self.invoiceItems = invoiceItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoice = try container.decode(InvoiceDetails.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceItems = try container.decode([InvoiceItems].self, forKey: .invoiceItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(invoiceItems, forKey: .invoiceItems)
        }
    }
}
