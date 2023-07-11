

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FetchCreditBalanceRequestPayload
         Used By: Order
     */

    class FetchCreditBalanceRequestPayload: Codable {
        public var affiliateId: String

        public var customerMobileNumber: String

        public var sellerId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case customerMobileNumber = "customer_mobile_number"

            case sellerId = "seller_id"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.affiliateId = affiliateId

            self.customerMobileNumber = customerMobileNumber

            self.sellerId = sellerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            sellerId = try container.decode(String.self, forKey: .sellerId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FetchCreditBalanceRequestPayload
         Used By: Order
     */

    class FetchCreditBalanceRequestPayload: Codable {
        public var affiliateId: String

        public var customerMobileNumber: String

        public var sellerId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case customerMobileNumber = "customer_mobile_number"

            case sellerId = "seller_id"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.affiliateId = affiliateId

            self.customerMobileNumber = customerMobileNumber

            self.sellerId = sellerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            sellerId = try container.decode(String.self, forKey: .sellerId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
        }
    }
}
