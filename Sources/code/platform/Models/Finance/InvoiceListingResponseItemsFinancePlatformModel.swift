

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: InvoiceListingResponseItems
         Used By: Finance
     */

    class InvoiceListingResponseItems: Codable {
        public var company: String?

        public var status: String?

        public var invoiceType: String?

        public var dueDate: String?

        public var invoiceDate: String?

        public var invoiceId: String?

        public var isDownloadable: Bool?

        public var amount: String?

        public var period: String?

        public var invoiceNumber: String?

        public enum CodingKeys: String, CodingKey {
            case company

            case status

            case invoiceType = "invoice_type"

            case dueDate = "due_date"

            case invoiceDate = "invoice_date"

            case invoiceId = "invoice_id"

            case isDownloadable = "is_downloadable"

            case amount

            case period

            case invoiceNumber = "invoice_number"
        }

        public init(amount: String? = nil, company: String? = nil, dueDate: String? = nil, invoiceDate: String? = nil, invoiceId: String? = nil, invoiceNumber: String? = nil, invoiceType: String? = nil, isDownloadable: Bool? = nil, period: String? = nil, status: String? = nil) {
            self.company = company

            self.status = status

            self.invoiceType = invoiceType

            self.dueDate = dueDate

            self.invoiceDate = invoiceDate

            self.invoiceId = invoiceId

            self.isDownloadable = isDownloadable

            self.amount = amount

            self.period = period

            self.invoiceNumber = invoiceNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceType = try container.decode(String.self, forKey: .invoiceType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceDate = try container.decode(String.self, forKey: .invoiceDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDownloadable = try container.decode(Bool.self, forKey: .isDownloadable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(String.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                period = try container.decode(String.self, forKey: .period)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceNumber = try container.decode(String.self, forKey: .invoiceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(invoiceType, forKey: .invoiceType)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(invoiceDate, forKey: .invoiceDate)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(isDownloadable, forKey: .isDownloadable)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(period, forKey: .period)

            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)
        }
    }
}
