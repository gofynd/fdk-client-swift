

import Foundation
public extension PlatformClient {
    /*
         Model: EinvoiceInfo
         Used By: Order
     */

    class EinvoiceInfo: Codable {
        public var invoice: EInvoice?

        public var creditNote: EInvoice?

        public enum CodingKeys: String, CodingKey {
            case invoice

            case creditNote = "credit_note"
        }

        public init(creditNote: EInvoice? = nil, invoice: EInvoice? = nil) {
            self.invoice = invoice

            self.creditNote = creditNote
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoice = try container.decode(EInvoice.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNote = try container.decode(EInvoice.self, forKey: .creditNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)
        }
    }
}
