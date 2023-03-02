

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderPayload
         Used By: Order
     */

    class CreateOrderPayload: Codable {
        public var orderConfig: OrderConfig

        public var affiliateId: String

        public var orderInfo: OrderInfo

        public enum CodingKeys: String, CodingKey {
            case orderConfig = "order_config"

            case affiliateId = "affiliate_id"

            case orderInfo = "order_info"
        }

        public init(affiliateId: String, orderConfig: OrderConfig, orderInfo: OrderInfo) {
            self.orderConfig = orderConfig

            self.affiliateId = affiliateId

            self.orderInfo = orderInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderConfig = try container.decode(OrderConfig.self, forKey: .orderConfig)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            orderInfo = try container.decode(OrderInfo.self, forKey: .orderInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderConfig, forKey: .orderConfig)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(orderInfo, forKey: .orderInfo)
        }
    }
}
