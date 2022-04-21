

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTrackResponse
         Used By: Order
     */

    class ShipmentTrackResponse: Codable {
        public var bagList: [ShipmentTrackResponseBagListItem]

        public var message: String

        public var orderValue: Int

        public enum CodingKeys: String, CodingKey {
            case bagList = "bag_list"

            case message

            case orderValue = "order_value"
        }

        public init(bagList: [ShipmentTrackResponseBagListItem], message: String, orderValue: Int) {
            self.bagList = bagList

            self.message = message

            self.orderValue = orderValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagList = try container.decode([ShipmentTrackResponseBagListItem].self, forKey: .bagList)

            message = try container.decode(String.self, forKey: .message)

            orderValue = try container.decode(Int.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagList, forKey: .bagList)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
        }
    }
}
