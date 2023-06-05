

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FetchCreditBalanceRequestPayload
         Used By: Order
     */

    class FetchCreditBalanceRequestPayload: Codable {
        public var sellerId: String

        public var customerMobileNumber: String

        public var affiliateId: String

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"

            case affiliateId = "affiliate_id"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FetchCreditBalanceRequestPayload
         Used By: Order
     */

    class FetchCreditBalanceRequestPayload: Codable {
        public var sellerId: String

        public var customerMobileNumber: String

        public var affiliateId: String

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"

            case affiliateId = "affiliate_id"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}
