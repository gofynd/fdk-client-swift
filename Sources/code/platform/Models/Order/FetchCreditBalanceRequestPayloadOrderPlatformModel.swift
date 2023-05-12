

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FetchCreditBalanceRequestPayload
         Used By: Order
     */

    class FetchCreditBalanceRequestPayload: Codable {
        public var customerMobileNumber: String

        public var sellerId: String

        public var affiliateId: String

        public enum CodingKeys: String, CodingKey {
            case customerMobileNumber = "customer_mobile_number"

            case sellerId = "seller_id"

            case affiliateId = "affiliate_id"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.customerMobileNumber = customerMobileNumber

            self.sellerId = sellerId

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

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
        public var customerMobileNumber: String

        public var sellerId: String

        public var affiliateId: String

        public enum CodingKeys: String, CodingKey {
            case customerMobileNumber = "customer_mobile_number"

            case sellerId = "seller_id"

            case affiliateId = "affiliate_id"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.customerMobileNumber = customerMobileNumber

            self.sellerId = sellerId

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}
