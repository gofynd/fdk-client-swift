

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreditBalanceInfo
         Used By: Order
     */

    class CreditBalanceInfo: Codable {
        public var totalCreditedBalance: String?

        public var customerMobileNumber: String?

        public var reason: String?

        public enum CodingKeys: String, CodingKey {
            case totalCreditedBalance = "total_credited_balance"

            case customerMobileNumber = "customer_mobile_number"

            case reason
        }

        public init(customerMobileNumber: String? = nil, reason: String? = nil, totalCreditedBalance: String? = nil) {
            self.totalCreditedBalance = totalCreditedBalance

            self.customerMobileNumber = customerMobileNumber

            self.reason = reason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(reason, forKey: .reason)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreditBalanceInfo
         Used By: Order
     */

    class CreditBalanceInfo: Codable {
        public var totalCreditedBalance: String?

        public var customerMobileNumber: String?

        public var reason: String?

        public enum CodingKeys: String, CodingKey {
            case totalCreditedBalance = "total_credited_balance"

            case customerMobileNumber = "customer_mobile_number"

            case reason
        }

        public init(customerMobileNumber: String? = nil, reason: String? = nil, totalCreditedBalance: String? = nil) {
            self.totalCreditedBalance = totalCreditedBalance

            self.customerMobileNumber = customerMobileNumber

            self.reason = reason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(reason, forKey: .reason)
        }
    }
}
