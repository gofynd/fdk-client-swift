

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: UnpaidInvoiceDataItems
         Used By: Finance
     */

    class UnpaidInvoiceDataItems: Codable {
        public var totalUnpaidInvoiceCount: Int?

        public var totalUnpaidAmount: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case totalUnpaidInvoiceCount = "total_unpaid_invoice_count"

            case totalUnpaidAmount = "total_unpaid_amount"

            case currency
        }

        public init(currency: String? = nil, totalUnpaidAmount: Double? = nil, totalUnpaidInvoiceCount: Int? = nil) {
            self.totalUnpaidInvoiceCount = totalUnpaidInvoiceCount

            self.totalUnpaidAmount = totalUnpaidAmount

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalUnpaidInvoiceCount = try container.decode(Int.self, forKey: .totalUnpaidInvoiceCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalUnpaidAmount = try container.decode(Double.self, forKey: .totalUnpaidAmount)

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

            try? container.encodeIfPresent(totalUnpaidInvoiceCount, forKey: .totalUnpaidInvoiceCount)

            try? container.encodeIfPresent(totalUnpaidAmount, forKey: .totalUnpaidAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
