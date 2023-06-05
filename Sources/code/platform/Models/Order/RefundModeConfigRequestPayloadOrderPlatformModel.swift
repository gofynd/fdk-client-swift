

import Foundation

public extension PlatformClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var sellerId: String

        public var orderingChannel: String

        public var customerMobileNumber: String?

        public var affiliateId: String

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case orderingChannel = "ordering_channel"

            case customerMobileNumber = "customer_mobile_number"

            case affiliateId = "affiliate_id"

            case fyndOrderId = "fynd_order_id"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.sellerId = sellerId

            self.orderingChannel = orderingChannel

            self.customerMobileNumber = customerMobileNumber

            self.affiliateId = affiliateId

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var sellerId: String

        public var orderingChannel: String

        public var customerMobileNumber: String?

        public var affiliateId: String

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case orderingChannel = "ordering_channel"

            case customerMobileNumber = "customer_mobile_number"

            case affiliateId = "affiliate_id"

            case fyndOrderId = "fynd_order_id"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.sellerId = sellerId

            self.orderingChannel = orderingChannel

            self.customerMobileNumber = customerMobileNumber

            self.affiliateId = affiliateId

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
