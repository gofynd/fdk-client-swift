

import Foundation
public extension PlatformClient {
    /*
         Model: EinvoiceInfo
         Used By: Order
     */

    class EinvoiceInfo: Codable {
        public var creditNote: [String: Any]?

        public var invoice: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case creditNote = "credit_note"

            case invoice
        }

        public init(creditNote: [String: Any]? = nil, invoice: [String: Any]? = nil) {
            self.creditNote = creditNote

            self.invoice = invoice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                creditNote = try container.decode([String: Any].self, forKey: .creditNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode([String: Any].self, forKey: .invoice)

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
