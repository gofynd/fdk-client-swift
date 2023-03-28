

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreditSummary
         Used By: Payment
     */
    class CreditSummary: Codable {
        public var merchantCustomerRefId: String

        public var statusMessage: String

        public var status: String

        public var balance: BalanceDetails?

        public enum CodingKeys: String, CodingKey {
            case merchantCustomerRefId = "merchant_customer_ref_id"

            case statusMessage = "status_message"

            case status

            case balance
        }

        public init(balance: BalanceDetails? = nil, merchantCustomerRefId: String, status: String, statusMessage: String) {
            self.merchantCustomerRefId = merchantCustomerRefId

            self.statusMessage = statusMessage

            self.status = status

            self.balance = balance
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)

            statusMessage = try container.decode(String.self, forKey: .statusMessage)

            status = try container.decode(String.self, forKey: .status)

            do {
                balance = try container.decode(BalanceDetails.self, forKey: .balance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)

            try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(balance, forKey: .balance)
        }
    }
}
