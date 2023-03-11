

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PDFLinks
         Used By: Order
     */

    class PDFLinks: Codable {
        public var labelA6: String?

        public var invoiceA6: String?

        public var labelA4: String?

        public var labelPos: String?

        public var invoiceA4: String?

        public var invoiceType: String

        public var labelType: String

        public var b2B: String?

        public var poInvoice: String?

        public var invoicePos: String?

        public var label: String?

        public var invoice: String?

        public var creditNoteUrl: String?

        public enum CodingKeys: String, CodingKey {
            case labelA6 = "label_a6"

            case invoiceA6 = "invoice_a6"

            case labelA4 = "label_a4"

            case labelPos = "label_pos"

            case invoiceA4 = "invoice_a4"

            case invoiceType = "invoice_type"

            case labelType = "label_type"

            case b2B = "b2b"

            case poInvoice = "po_invoice"

            case invoicePos = "invoice_pos"

            case label

            case invoice

            case creditNoteUrl = "credit_note_url"
        }

        public init(b2B: String? = nil, creditNoteUrl: String? = nil, invoice: String? = nil, invoiceA4: String? = nil, invoiceA6: String? = nil, invoicePos: String? = nil, invoiceType: String, label: String? = nil, labelA4: String? = nil, labelA6: String? = nil, labelPos: String? = nil, labelType: String, poInvoice: String? = nil) {
            self.labelA6 = labelA6

            self.invoiceA6 = invoiceA6

            self.labelA4 = labelA4

            self.labelPos = labelPos

            self.invoiceA4 = invoiceA4

            self.invoiceType = invoiceType

            self.labelType = labelType

            self.b2B = b2B

            self.poInvoice = poInvoice

            self.invoicePos = invoicePos

            self.label = label

            self.invoice = invoice

            self.creditNoteUrl = creditNoteUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                labelA6 = try container.decode(String.self, forKey: .labelA6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceA6 = try container.decode(String.self, forKey: .invoiceA6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelA4 = try container.decode(String.self, forKey: .labelA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelPos = try container.decode(String.self, forKey: .labelPos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceA4 = try container.decode(String.self, forKey: .invoiceA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoiceType = try container.decode(String.self, forKey: .invoiceType)

            labelType = try container.decode(String.self, forKey: .labelType)

            do {
                b2B = try container.decode(String.self, forKey: .b2B)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                poInvoice = try container.decode(String.self, forKey: .poInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoicePos = try container.decode(String.self, forKey: .invoicePos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(String.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteUrl = try container.decode(String.self, forKey: .creditNoteUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(labelA6, forKey: .labelA6)

            try? container.encodeIfPresent(invoiceA6, forKey: .invoiceA6)

            try? container.encodeIfPresent(labelA4, forKey: .labelA4)

            try? container.encodeIfPresent(labelPos, forKey: .labelPos)

            try? container.encodeIfPresent(invoiceA4, forKey: .invoiceA4)

            try? container.encodeIfPresent(invoiceType, forKey: .invoiceType)

            try? container.encodeIfPresent(labelType, forKey: .labelType)

            try? container.encodeIfPresent(b2B, forKey: .b2B)

            try? container.encodeIfPresent(poInvoice, forKey: .poInvoice)

            try? container.encodeIfPresent(invoicePos, forKey: .invoicePos)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(creditNoteUrl, forKey: .creditNoteUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PDFLinks
         Used By: Order
     */

    class PDFLinks: Codable {
        public var labelA6: String?

        public var invoiceA6: String?

        public var labelA4: String?

        public var labelPos: String?

        public var invoiceA4: String?

        public var invoiceType: String

        public var labelType: String

        public var b2B: String?

        public var poInvoice: String?

        public var invoicePos: String?

        public var label: String?

        public var invoice: String?

        public var creditNoteUrl: String?

        public enum CodingKeys: String, CodingKey {
            case labelA6 = "label_a6"

            case invoiceA6 = "invoice_a6"

            case labelA4 = "label_a4"

            case labelPos = "label_pos"

            case invoiceA4 = "invoice_a4"

            case invoiceType = "invoice_type"

            case labelType = "label_type"

            case b2B = "b2b"

            case poInvoice = "po_invoice"

            case invoicePos = "invoice_pos"

            case label

            case invoice

            case creditNoteUrl = "credit_note_url"
        }

        public init(b2B: String? = nil, creditNoteUrl: String? = nil, invoice: String? = nil, invoiceA4: String? = nil, invoiceA6: String? = nil, invoicePos: String? = nil, invoiceType: String, label: String? = nil, labelA4: String? = nil, labelA6: String? = nil, labelPos: String? = nil, labelType: String, poInvoice: String? = nil) {
            self.labelA6 = labelA6

            self.invoiceA6 = invoiceA6

            self.labelA4 = labelA4

            self.labelPos = labelPos

            self.invoiceA4 = invoiceA4

            self.invoiceType = invoiceType

            self.labelType = labelType

            self.b2B = b2B

            self.poInvoice = poInvoice

            self.invoicePos = invoicePos

            self.label = label

            self.invoice = invoice

            self.creditNoteUrl = creditNoteUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                labelA6 = try container.decode(String.self, forKey: .labelA6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceA6 = try container.decode(String.self, forKey: .invoiceA6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelA4 = try container.decode(String.self, forKey: .labelA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelPos = try container.decode(String.self, forKey: .labelPos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceA4 = try container.decode(String.self, forKey: .invoiceA4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoiceType = try container.decode(String.self, forKey: .invoiceType)

            labelType = try container.decode(String.self, forKey: .labelType)

            do {
                b2B = try container.decode(String.self, forKey: .b2B)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                poInvoice = try container.decode(String.self, forKey: .poInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoicePos = try container.decode(String.self, forKey: .invoicePos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(String.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteUrl = try container.decode(String.self, forKey: .creditNoteUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(labelA6, forKey: .labelA6)

            try? container.encodeIfPresent(invoiceA6, forKey: .invoiceA6)

            try? container.encodeIfPresent(labelA4, forKey: .labelA4)

            try? container.encodeIfPresent(labelPos, forKey: .labelPos)

            try? container.encodeIfPresent(invoiceA4, forKey: .invoiceA4)

            try? container.encodeIfPresent(invoiceType, forKey: .invoiceType)

            try? container.encodeIfPresent(labelType, forKey: .labelType)

            try? container.encodeIfPresent(b2B, forKey: .b2B)

            try? container.encodeIfPresent(poInvoice, forKey: .poInvoice)

            try? container.encodeIfPresent(invoicePos, forKey: .invoicePos)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(creditNoteUrl, forKey: .creditNoteUrl)
        }
    }
}
