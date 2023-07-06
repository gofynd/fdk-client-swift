

import Foundation

public extension PlatformClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var fyndOrderId: String

        public var sellerId: Int

        public var affiliateId: String

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case sellerId = "seller_id"

            case affiliateId = "affiliate_id"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, sellerId: Int) {
            self.fyndOrderId = fyndOrderId

            self.sellerId = sellerId

            self.affiliateId = affiliateId

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var fyndOrderId: String

        public var sellerId: Int

        public var affiliateId: String

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case sellerId = "seller_id"

            case affiliateId = "affiliate_id"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, sellerId: Int) {
            self.fyndOrderId = fyndOrderId

            self.sellerId = sellerId

            self.affiliateId = affiliateId

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}
