

import Foundation

public extension PlatformClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var customerMobileNumber: String?

        public var affiliateId: String

        public var sellerId: String

        public var fyndOrderId: String

        public var orderingChannel: String

        public enum CodingKeys: String, CodingKey {
            case customerMobileNumber = "customer_mobile_number"

            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case fyndOrderId = "fynd_order_id"

            case orderingChannel = "ordering_channel"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.customerMobileNumber = customerMobileNumber

            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.fyndOrderId = fyndOrderId

            self.orderingChannel = orderingChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var customerMobileNumber: String?

        public var affiliateId: String

        public var sellerId: String

        public var fyndOrderId: String

        public var orderingChannel: String

        public enum CodingKeys: String, CodingKey {
            case customerMobileNumber = "customer_mobile_number"

            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case fyndOrderId = "fynd_order_id"

            case orderingChannel = "ordering_channel"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.customerMobileNumber = customerMobileNumber

            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.fyndOrderId = fyndOrderId

            self.orderingChannel = orderingChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
        }
    }
}
