

import Foundation
public extension PlatformClient {
    /*
         Model: OrderStatus
         Used By: OrderManage
     */

    class OrderStatus: Codable {
        public var endDate: String

        public var mobile: Int

        public var orderDetails: [FyndOrderIdList]?

        public var startDate: String

        public enum CodingKeys: String, CodingKey {
            case endDate = "end_date"

            case mobile

            case orderDetails = "order_details"

            case startDate = "start_date"
        }

        public init(endDate: String, mobile: Int, orderDetails: [FyndOrderIdList]? = nil, startDate: String) {
            self.endDate = endDate

            self.mobile = mobile

            self.orderDetails = orderDetails

            self.startDate = startDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            endDate = try container.decode(String.self, forKey: .endDate)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                orderDetails = try container.decode([FyndOrderIdList].self, forKey: .orderDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            startDate = try container.decode(String.self, forKey: .startDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(orderDetails, forKey: .orderDetails)

            try? container.encodeIfPresent(startDate, forKey: .startDate)
        }
    }
}
