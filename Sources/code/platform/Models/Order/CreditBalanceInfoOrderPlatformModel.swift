

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreditBalanceInfo
         Used By: Order
     */

    class CreditBalanceInfo: Codable {
        public var reason: String?

        public var totalCreditedBalance: String?

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case reason

            case totalCreditedBalance = "total_credited_balance"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(customerMobileNumber: String? = nil, reason: String? = nil, totalCreditedBalance: String? = nil) {
            self.reason = reason

            self.totalCreditedBalance = totalCreditedBalance

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalCreditedBalance = try container.decode(String.self, forKey: .totalCreditedBalance)

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

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreditBalanceInfo
         Used By: Order
     */

    class CreditBalanceInfo: Codable {
        public var reason: String?

        public var totalCreditedBalance: String?

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case reason

            case totalCreditedBalance = "total_credited_balance"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(customerMobileNumber: String? = nil, reason: String? = nil, totalCreditedBalance: String? = nil) {
            self.reason = reason

            self.totalCreditedBalance = totalCreditedBalance

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalCreditedBalance = try container.decode(String.self, forKey: .totalCreditedBalance)

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

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}
