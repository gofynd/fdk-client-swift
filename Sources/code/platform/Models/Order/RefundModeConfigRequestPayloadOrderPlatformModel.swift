

import Foundation

public extension PlatformClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var orderingChannel: String

        public var fyndOrderId: String

        public var affiliateId: String

        public var sellerId: String

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case fyndOrderId = "fynd_order_id"

            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.orderingChannel = orderingChannel

            self.fyndOrderId = fyndOrderId

            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

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
        public var orderingChannel: String

        public var fyndOrderId: String

        public var affiliateId: String

        public var sellerId: String

        public var customerMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case fyndOrderId = "fynd_order_id"

            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.orderingChannel = orderingChannel

            self.fyndOrderId = fyndOrderId

            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
        }
    }
}
