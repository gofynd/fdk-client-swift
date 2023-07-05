

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetCustomerCreditBalance
         Used By: Finance
     */

    class GetCustomerCreditBalance: Codable {
        public var affiliateId: String?

        public var sellerId: Int?

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(affiliateId: String? = nil, customerMobileNumber: String? = nil, sellerId: Int? = nil) {
            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(Int.self, forKey: .sellerId)

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

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}
