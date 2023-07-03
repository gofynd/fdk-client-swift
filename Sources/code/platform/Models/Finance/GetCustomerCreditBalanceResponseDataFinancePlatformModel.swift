

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetCustomerCreditBalanceResponseData
         Used By: Finance
     */

    class GetCustomerCreditBalanceResponseData: Codable {
        public var totalCreditedBalance: Int?

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case totalCreditedBalance = "total_credited_balance"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(customerMobileNumber: String? = nil, totalCreditedBalance: Int? = nil) {
            self.totalCreditedBalance = totalCreditedBalance

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalCreditedBalance = try container.decode(Int.self, forKey: .totalCreditedBalance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}
