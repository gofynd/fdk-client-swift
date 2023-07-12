

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FetchCreditBalanceRequestPayload
         Used By: Order
     */

    class FetchCreditBalanceRequestPayload: Codable {
        public var affiliateId: String

        public var sellerId: String

        public var customerMobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
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

        public var sellerId: String

        public var customerMobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(affiliateId: String, customerMobileNumber: String, sellerId: String) {
            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}
