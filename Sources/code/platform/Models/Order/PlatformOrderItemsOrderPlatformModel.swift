

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformOrderItems
         Used By: Order
     */

    class PlatformOrderItems: Codable {
        public var orderValue: Double?

        public var totalOrderValue: Double?

        public var userInfo: UserDataInfo?

        public var orderCreatedTime: String?

        public var breakupValues: [PlatformBreakupValues]?

        public var paymentMode: String?

        public var meta: [String: Any]?

        public var shipments: [PlatformShipment]?

        public var orderId: String?

        public var channel: PlatformChannel?

        public enum CodingKeys: String, CodingKey {
            case orderValue = "order_value"

            case totalOrderValue = "total_order_value"

            case userInfo = "user_info"

            case orderCreatedTime = "order_created_time"

            case breakupValues = "breakup_values"

            case paymentMode = "payment_mode"

            case meta

            case shipments

            case orderId = "order_id"

            case channel
        }

        public init(breakupValues: [PlatformBreakupValues]? = nil, channel: PlatformChannel? = nil, meta: [String: Any]? = nil, orderCreatedTime: String? = nil, orderId: String? = nil, orderValue: Double? = nil, paymentMode: String? = nil, shipments: [PlatformShipment]? = nil, totalOrderValue: Double? = nil, userInfo: UserDataInfo? = nil) {
            self.orderValue = orderValue

            self.totalOrderValue = totalOrderValue

            self.userInfo = userInfo

            self.orderCreatedTime = orderCreatedTime

            self.breakupValues = breakupValues

            self.paymentMode = paymentMode

            self.meta = meta

            self.shipments = shipments

            self.orderId = orderId

            self.channel = channel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderValue = try container.decode(Double.self, forKey: .orderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(UserDataInfo.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([PlatformBreakupValues].self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(PlatformChannel.self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(channel, forKey: .channel)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformOrderItems
         Used By: Order
     */

    class PlatformOrderItems: Codable {
        public var orderValue: Double?

        public var totalOrderValue: Double?

        public var userInfo: UserDataInfo?

        public var orderCreatedTime: String?

        public var breakupValues: [PlatformBreakupValues]?

        public var paymentMode: String?

        public var meta: [String: Any]?

        public var shipments: [PlatformShipment]?

        public var orderId: String?

        public var channel: PlatformChannel?

        public enum CodingKeys: String, CodingKey {
            case orderValue = "order_value"

            case totalOrderValue = "total_order_value"

            case userInfo = "user_info"

            case orderCreatedTime = "order_created_time"

            case breakupValues = "breakup_values"

            case paymentMode = "payment_mode"

            case meta

            case shipments

            case orderId = "order_id"

            case channel
        }

        public init(breakupValues: [PlatformBreakupValues]? = nil, channel: PlatformChannel? = nil, meta: [String: Any]? = nil, orderCreatedTime: String? = nil, orderId: String? = nil, orderValue: Double? = nil, paymentMode: String? = nil, shipments: [PlatformShipment]? = nil, totalOrderValue: Double? = nil, userInfo: UserDataInfo? = nil) {
            self.orderValue = orderValue

            self.totalOrderValue = totalOrderValue

            self.userInfo = userInfo

            self.orderCreatedTime = orderCreatedTime

            self.breakupValues = breakupValues

            self.paymentMode = paymentMode

            self.meta = meta

            self.shipments = shipments

            self.orderId = orderId

            self.channel = channel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderValue = try container.decode(Double.self, forKey: .orderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(UserDataInfo.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([PlatformBreakupValues].self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(PlatformChannel.self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(channel, forKey: .channel)
        }
    }
}
