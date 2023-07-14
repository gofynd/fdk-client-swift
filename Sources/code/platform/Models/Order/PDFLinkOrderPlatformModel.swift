

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PDFLink
         Used By: Order
     */

    class PDFLink: Codable {
        public var invoiceA4: String?

        public var creditNoteA4: String?

        public enum CodingKeys: String, CodingKey {
            case invoiceA4 = "invoice_a4"

            case creditNoteA4 = "credit_note_a4"
        }

        public init(creditNoteA4: String? = nil, invoiceA4: String? = nil) {
            self.invoiceA4 = invoiceA4

            self.creditNoteA4 = creditNoteA4
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoiceA4 = try container.decode(String.self, forKey: .invoiceA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteA4 = try container.decode(String.self, forKey: .creditNoteA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceA4, forKey: .invoiceA4)

            try? container.encodeIfPresent(creditNoteA4, forKey: .creditNoteA4)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PDFLink
         Used By: Order
     */

    class PDFLink: Codable {
        public var invoiceA4: String?

        public var creditNoteA4: String?

        public enum CodingKeys: String, CodingKey {
            case invoiceA4 = "invoice_a4"

            case creditNoteA4 = "credit_note_a4"
        }

        public init(creditNoteA4: String? = nil, invoiceA4: String? = nil) {
            self.invoiceA4 = invoiceA4

            self.creditNoteA4 = creditNoteA4
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoiceA4 = try container.decode(String.self, forKey: .invoiceA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteA4 = try container.decode(String.self, forKey: .creditNoteA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceA4, forKey: .invoiceA4)

            try? container.encodeIfPresent(creditNoteA4, forKey: .creditNoteA4)
        }
    }
}
