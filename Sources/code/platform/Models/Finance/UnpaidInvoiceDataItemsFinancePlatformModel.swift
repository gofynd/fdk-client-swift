

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: UnpaidInvoiceDataItems
         Used By: Finance
     */

    class UnpaidInvoiceDataItems: Codable {
        public var totalUnpaidAmount: Double?

        public var totalUnpaidInvoiceCount: Int?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case totalUnpaidAmount = "total_unpaid_amount"

            case totalUnpaidInvoiceCount = "total_unpaid_invoice_count"

            case currency
        }

        public init(currency: String? = nil, totalUnpaidAmount: Double? = nil, totalUnpaidInvoiceCount: Int? = nil) {
            self.totalUnpaidAmount = totalUnpaidAmount

            self.totalUnpaidInvoiceCount = totalUnpaidInvoiceCount

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalUnpaidAmount = try container.decode(Double.self, forKey: .totalUnpaidAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalUnpaidInvoiceCount = try container.decode(Int.self, forKey: .totalUnpaidInvoiceCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnpaidAmount, forKey: .totalUnpaidAmount)

            try? container.encodeIfPresent(totalUnpaidInvoiceCount, forKey: .totalUnpaidInvoiceCount)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
