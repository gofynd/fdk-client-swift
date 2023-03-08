

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: EinvoiceInfo
         Used By: DocumentEngine
     */

    class EinvoiceInfo: Codable {
        public var creditNote: EInvoice?

        public var invoice: EInvoice?

        public enum CodingKeys: String, CodingKey {
            case creditNote = "credit_note"

            case invoice
        }

        public init(creditNote: EInvoice? = nil, invoice: EInvoice? = nil) {
            self.creditNote = creditNote

            self.invoice = invoice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                creditNote = try container.decode(EInvoice.self, forKey: .creditNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(EInvoice.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)

            try? container.encodeIfPresent(invoice, forKey: .invoice)
        }
    }
}
