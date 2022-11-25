

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderPayload
         Used By: OrderManage
     */

    class CreateOrderPayload: Codable {
        public var orderInfo: OrderInfo

        public var orderConfig: OrderConfig

        public var affiliateId: String

        public enum CodingKeys: String, CodingKey {
            case orderInfo = "order_info"

            case orderConfig = "order_config"

            case affiliateId = "affiliate_id"
        }

        public init(affiliateId: String, orderConfig: OrderConfig, orderInfo: OrderInfo) {
            self.orderInfo = orderInfo

            self.orderConfig = orderConfig

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderInfo = try container.decode(OrderInfo.self, forKey: .orderInfo)

            orderConfig = try container.decode(OrderConfig.self, forKey: .orderConfig)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderInfo, forKey: .orderInfo)

            try? container.encodeIfPresent(orderConfig, forKey: .orderConfig)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}
