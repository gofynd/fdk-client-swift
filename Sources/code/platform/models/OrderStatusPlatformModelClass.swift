

import Foundation
public extension PlatformClient {
    /*
         Model: OrderStatus
         Used By: Order
     */

    class OrderStatus: Codable {
        public var startDate: String

        public var mobile: Int

        public var orderDetails: [FyndOrderIdList]?

        public var endDate: String

        public enum CodingKeys: String, CodingKey {
            case startDate = "start_date"

            case mobile

            case orderDetails = "order_details"

            case endDate = "end_date"
        }

        public init(endDate: String, mobile: Int, orderDetails: [FyndOrderIdList]? = nil, startDate: String) {
            self.startDate = startDate

            self.mobile = mobile

            self.orderDetails = orderDetails

            self.endDate = endDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            startDate = try container.decode(String.self, forKey: .startDate)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                orderDetails = try container.decode([FyndOrderIdList].self, forKey: .orderDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            endDate = try container.decode(String.self, forKey: .endDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}
