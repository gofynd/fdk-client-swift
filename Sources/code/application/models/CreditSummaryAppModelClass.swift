

import Foundation
public extension ApplicationClient {
    /*
         Model: CreditSummary
         Used By: Payment
     */
    class CreditSummary: Codable {
        public var status: String

        public var merchantCustomerRefId: String

        public var balance: BalanceDetails?

        public var statusMessage: String

        public enum CodingKeys: String, CodingKey {
            case status

            case merchantCustomerRefId = "merchant_customer_ref_id"

            case balance

            case statusMessage = "status_message"
        }

        public init(balance: BalanceDetails? = nil, merchantCustomerRefId: String, status: String, statusMessage: String) {
            self.status = status

            self.merchantCustomerRefId = merchantCustomerRefId

            self.balance = balance

            self.statusMessage = statusMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)

            do {
                balance = try container.decode(BalanceDetails.self, forKey: .balance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusMessage = try container.decode(String.self, forKey: .statusMessage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)

            try? container.encodeIfPresent(balance, forKey: .balance)

            try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)
        }
    }
}
