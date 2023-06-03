

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetInvoiceListResponse
         Used By: Finance
     */

    class GetInvoiceListResponse: Codable {
        public var paymentStatusList: [[String: Any]]?

        public var success: Bool?

        public var invoiceTypeList: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case paymentStatusList = "payment_status_list"

            case success

            case invoiceTypeList = "invoice_type_list"
        }

        public init(invoiceTypeList: [[String: Any]]? = nil, paymentStatusList: [[String: Any]]? = nil, success: Bool? = nil) {
            self.paymentStatusList = paymentStatusList

            self.success = success

            self.invoiceTypeList = invoiceTypeList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentStatusList = try container.decode([[String: Any]].self, forKey: .paymentStatusList)

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

            do {
                invoiceTypeList = try container.decode([[String: Any]].self, forKey: .invoiceTypeList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentStatusList, forKey: .paymentStatusList)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(invoiceTypeList, forKey: .invoiceTypeList)
        }
    }
}
