

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderPayload
         Used By: Order
     */

    class CreateOrderPayload: Codable {
        public var orderConfig: OrderConfig

        public var orderInfo: OrderInfo

        public var affiliateId: String

        public enum CodingKeys: String, CodingKey {
            case orderConfig = "order_config"

            case orderInfo = "order_info"

            case affiliateId = "affiliate_id"
        }

        public init(affiliateId: String, orderConfig: OrderConfig, orderInfo: OrderInfo) {
            self.orderConfig = orderConfig

            self.orderInfo = orderInfo

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderConfig = try container.decode(OrderConfig.self, forKey: .orderConfig)

            orderInfo = try container.decode(OrderInfo.self, forKey: .orderInfo)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderConfig, forKey: .orderConfig)

            try? container.encodeIfPresent(orderInfo, forKey: .orderInfo)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}
