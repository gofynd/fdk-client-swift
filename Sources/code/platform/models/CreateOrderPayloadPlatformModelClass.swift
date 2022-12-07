

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderPayload
         Used By: OrderManage
     */

    class CreateOrderPayload: Codable {
        public var affiliateId: String

        public var orderConfig: OrderConfig

        public var orderInfo: OrderInfo

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case orderConfig = "order_config"

            case orderInfo = "order_info"
        }

        public init(affiliateId: String, orderConfig: OrderConfig, orderInfo: OrderInfo) {
            self.affiliateId = affiliateId

            self.orderConfig = orderConfig

            self.orderInfo = orderInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            orderConfig = try container.decode(OrderConfig.self, forKey: .orderConfig)

            orderInfo = try container.decode(OrderInfo.self, forKey: .orderInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(orderConfig, forKey: .orderConfig)

            try? container.encodeIfPresent(orderInfo, forKey: .orderInfo)
        }
    }
}
