

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: InoviceListingPayloadDataFilters
         Used By: Finance
     */

    class InoviceListingPayloadDataFilters: Codable {
        public var invoiceType: [String]?

        public var paymentStatus: [String]?

        public var companyId: [String]?

        public enum CodingKeys: String, CodingKey {
            case invoiceType = "invoice_type"

            case paymentStatus = "payment_status"

            case companyId = "company_id"
        }

        public init(companyId: [String]? = nil, invoiceType: [String]? = nil, paymentStatus: [String]? = nil) {
            self.invoiceType = invoiceType

            self.paymentStatus = paymentStatus

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoiceType = try container.decode([String].self, forKey: .invoiceType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentStatus = try container.decode([String].self, forKey: .paymentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode([String].self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceType, forKey: .invoiceType)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
