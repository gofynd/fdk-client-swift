

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateMeta
         Used By: Order
     */

    class AffiliateMeta: Codable {
        public var boxType: String?

        public var orderItemId: String?

        public var couponCode: String?

        public var employeeDiscount: Double?

        public var channelShipmentId: String?

        public var isPriority: Bool?

        public var channelOrderId: String?

        public var loyaltyDiscount: Double?

        public var quantity: Int?

        public var dueDate: String?

        public var sizeLevelTotalQty: Int?

        public enum CodingKeys: String, CodingKey {
            case boxType = "box_type"

            case orderItemId = "order_item_id"

            case couponCode = "coupon_code"

            case employeeDiscount = "employee_discount"

            case channelShipmentId = "channel_shipment_id"

            case isPriority = "is_priority"

            case channelOrderId = "channel_order_id"

            case loyaltyDiscount = "loyalty_discount"

            case quantity

            case dueDate = "due_date"

            case sizeLevelTotalQty = "size_level_total_qty"
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, isPriority: Bool? = nil, loyaltyDiscount: Double? = nil, orderItemId: String? = nil, quantity: Int? = nil, sizeLevelTotalQty: Int? = nil) {
            self.boxType = boxType

            self.orderItemId = orderItemId

            self.couponCode = couponCode

            self.employeeDiscount = employeeDiscount

            self.channelShipmentId = channelShipmentId

            self.isPriority = isPriority

            self.channelOrderId = channelOrderId

            self.loyaltyDiscount = loyaltyDiscount

            self.quantity = quantity

            self.dueDate = dueDate

            self.sizeLevelTotalQty = sizeLevelTotalQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderItemId = try container.decode(String.self, forKey: .orderItemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPriority = try container.decode(Bool.self, forKey: .isPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelOrderId = try container.decode(String.self, forKey: .channelOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)

            try? container.encode(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encode(channelShipmentId, forKey: .channelShipmentId)

            try? container.encodeIfPresent(isPriority, forKey: .isPriority)

            try? container.encode(channelOrderId, forKey: .channelOrderId)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(dueDate, forKey: .dueDate)

            try? container.encode(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateMeta
         Used By: Order
     */

    class AffiliateMeta: Codable {
        public var boxType: String?

        public var orderItemId: String?

        public var couponCode: String?

        public var employeeDiscount: Double?

        public var channelShipmentId: String?

        public var isPriority: Bool?

        public var channelOrderId: String?

        public var loyaltyDiscount: Double?

        public var quantity: Int?

        public var dueDate: String?

        public var sizeLevelTotalQty: Int?

        public enum CodingKeys: String, CodingKey {
            case boxType = "box_type"

            case orderItemId = "order_item_id"

            case couponCode = "coupon_code"

            case employeeDiscount = "employee_discount"

            case channelShipmentId = "channel_shipment_id"

            case isPriority = "is_priority"

            case channelOrderId = "channel_order_id"

            case loyaltyDiscount = "loyalty_discount"

            case quantity

            case dueDate = "due_date"

            case sizeLevelTotalQty = "size_level_total_qty"
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, isPriority: Bool? = nil, loyaltyDiscount: Double? = nil, orderItemId: String? = nil, quantity: Int? = nil, sizeLevelTotalQty: Int? = nil) {
            self.boxType = boxType

            self.orderItemId = orderItemId

            self.couponCode = couponCode

            self.employeeDiscount = employeeDiscount

            self.channelShipmentId = channelShipmentId

            self.isPriority = isPriority

            self.channelOrderId = channelOrderId

            self.loyaltyDiscount = loyaltyDiscount

            self.quantity = quantity

            self.dueDate = dueDate

            self.sizeLevelTotalQty = sizeLevelTotalQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderItemId = try container.decode(String.self, forKey: .orderItemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPriority = try container.decode(Bool.self, forKey: .isPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelOrderId = try container.decode(String.self, forKey: .channelOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeLevelTotalQty = try container.decode(Int.self, forKey: .sizeLevelTotalQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)

            try? container.encode(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encode(channelShipmentId, forKey: .channelShipmentId)

            try? container.encodeIfPresent(isPriority, forKey: .isPriority)

            try? container.encode(channelOrderId, forKey: .channelOrderId)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(dueDate, forKey: .dueDate)

            try? container.encode(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)
        }
    }
}
