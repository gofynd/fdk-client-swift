

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: InvoiceTypeResponse
         Used By: Finance
     */

    class InvoiceTypeResponse: Codable {
        public var paymentStatusList: [InvoiceTypeResponseItems]?

        public var invoiceTypeList: [InvoiceTypeResponseItems]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case paymentStatusList = "payment_status_list"

            case invoiceTypeList = "invoice_type_list"

            case success
        }

        public init(invoiceTypeList: [InvoiceTypeResponseItems]? = nil, paymentStatusList: [InvoiceTypeResponseItems]? = nil, success: Bool? = nil) {
            self.paymentStatusList = paymentStatusList

            self.invoiceTypeList = invoiceTypeList

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentStatusList = try container.decode([InvoiceTypeResponseItems].self, forKey: .paymentStatusList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceTypeList = try container.decode([InvoiceTypeResponseItems].self, forKey: .invoiceTypeList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentStatusList, forKey: .paymentStatusList)

            try? container.encodeIfPresent(invoiceTypeList, forKey: .invoiceTypeList)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
