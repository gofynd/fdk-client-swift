

import Foundation

public extension PlatformClient.Order {
    /*
         Model: InvoiceInfo
         Used By: Order
     */

    class InvoiceInfo: Codable {
        public var externalInvoiceId: String?

        public var invoiceUrl: String?

        public var creditNoteId: String?

        public var updatedDate: String?

        public var storeInvoiceId: String?

        public var labelUrl: String?

        public enum CodingKeys: String, CodingKey {
            case externalInvoiceId = "external_invoice_id"

            case invoiceUrl = "invoice_url"

            case creditNoteId = "credit_note_id"

            case updatedDate = "updated_date"

            case storeInvoiceId = "store_invoice_id"

            case labelUrl = "label_url"
        }

        public init(creditNoteId: String? = nil, externalInvoiceId: String? = nil, invoiceUrl: String? = nil, labelUrl: String? = nil, storeInvoiceId: String? = nil, updatedDate: String? = nil) {
            self.externalInvoiceId = externalInvoiceId

            self.invoiceUrl = invoiceUrl

            self.creditNoteId = creditNoteId

            self.updatedDate = updatedDate

            self.storeInvoiceId = storeInvoiceId

            self.labelUrl = labelUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                externalInvoiceId = try container.decode(String.self, forKey: .externalInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedDate = try container.decode(String.self, forKey: .updatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelUrl = try container.decode(String.self, forKey: .labelUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalInvoiceId, forKey: .externalInvoiceId)

            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: InvoiceInfo
         Used By: Order
     */

    class InvoiceInfo: Codable {
        public var externalInvoiceId: String?

        public var invoiceUrl: String?

        public var creditNoteId: String?

        public var updatedDate: String?

        public var storeInvoiceId: String?

        public var labelUrl: String?

        public enum CodingKeys: String, CodingKey {
            case externalInvoiceId = "external_invoice_id"

            case invoiceUrl = "invoice_url"

            case creditNoteId = "credit_note_id"

            case updatedDate = "updated_date"

            case storeInvoiceId = "store_invoice_id"

            case labelUrl = "label_url"
        }

        public init(creditNoteId: String? = nil, externalInvoiceId: String? = nil, invoiceUrl: String? = nil, labelUrl: String? = nil, storeInvoiceId: String? = nil, updatedDate: String? = nil) {
            self.externalInvoiceId = externalInvoiceId

            self.invoiceUrl = invoiceUrl

            self.creditNoteId = creditNoteId

            self.updatedDate = updatedDate

            self.storeInvoiceId = storeInvoiceId

            self.labelUrl = labelUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                externalInvoiceId = try container.decode(String.self, forKey: .externalInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedDate = try container.decode(String.self, forKey: .updatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelUrl = try container.decode(String.self, forKey: .labelUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalInvoiceId, forKey: .externalInvoiceId)

            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
        }
    }
}
