

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateMeta
         Used By: Order
     */

    class AffiliateMeta: Codable {
        public var channelOrderId: String?

        public var dueDate: String?

        public var channelShipmentId: String?

        public var boxType: String?

        public var couponCode: String?

        public var orderItemId: String?

        public var isPriority: Bool?

        public var quantity: Int?

        public var replacementDetails: ReplacementDetails?

        public var marketplaceInvoiceId: String?

        public var sizeLevelTotalQty: Int?

        public var employeeDiscount: Double?

        public var loyaltyDiscount: Double?

        public enum CodingKeys: String, CodingKey {
            case channelOrderId = "channel_order_id"

            case dueDate = "due_date"

            case channelShipmentId = "channel_shipment_id"

            case boxType = "box_type"

            case couponCode = "coupon_code"

            case orderItemId = "order_item_id"

            case isPriority = "is_priority"

            case quantity

            case replacementDetails = "replacement_details"

            case marketplaceInvoiceId = "marketplace_invoice_id"

            case sizeLevelTotalQty = "size_level_total_qty"

            case employeeDiscount = "employee_discount"

            case loyaltyDiscount = "loyalty_discount"
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, isPriority: Bool? = nil, loyaltyDiscount: Double? = nil, marketplaceInvoiceId: String? = nil, orderItemId: String? = nil, quantity: Int? = nil, replacementDetails: ReplacementDetails? = nil, sizeLevelTotalQty: Int? = nil) {
            self.channelOrderId = channelOrderId

            self.dueDate = dueDate

            self.channelShipmentId = channelShipmentId

            self.boxType = boxType

            self.couponCode = couponCode

            self.orderItemId = orderItemId

            self.isPriority = isPriority

            self.quantity = quantity

            self.replacementDetails = replacementDetails

            self.marketplaceInvoiceId = marketplaceInvoiceId

            self.sizeLevelTotalQty = sizeLevelTotalQty

            self.employeeDiscount = employeeDiscount

            self.loyaltyDiscount = loyaltyDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channelOrderId = try container.decode(String.self, forKey: .channelOrderId)

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
                channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

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
                orderItemId = try container.decode(String.self, forKey: .orderItemId)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementDetails = try container.decode(ReplacementDetails.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceInvoiceId = try container.decode(String.self, forKey: .marketplaceInvoiceId)

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

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(channelOrderId, forKey: .channelOrderId)

            try? container.encode(dueDate, forKey: .dueDate)

            try? container.encode(channelShipmentId, forKey: .channelShipmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encode(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)

            try? container.encodeIfPresent(isPriority, forKey: .isPriority)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encode(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)

            try? container.encode(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateMeta
         Used By: Order
     */

    class AffiliateMeta: Codable {
        public var channelOrderId: String?

        public var dueDate: String?

        public var channelShipmentId: String?

        public var boxType: String?

        public var couponCode: String?

        public var orderItemId: String?

        public var isPriority: Bool?

        public var quantity: Int?

        public var replacementDetails: ReplacementDetails?

        public var marketplaceInvoiceId: String?

        public var sizeLevelTotalQty: Int?

        public var employeeDiscount: Double?

        public var loyaltyDiscount: Double?

        public enum CodingKeys: String, CodingKey {
            case channelOrderId = "channel_order_id"

            case dueDate = "due_date"

            case channelShipmentId = "channel_shipment_id"

            case boxType = "box_type"

            case couponCode = "coupon_code"

            case orderItemId = "order_item_id"

            case isPriority = "is_priority"

            case quantity

            case replacementDetails = "replacement_details"

            case marketplaceInvoiceId = "marketplace_invoice_id"

            case sizeLevelTotalQty = "size_level_total_qty"

            case employeeDiscount = "employee_discount"

            case loyaltyDiscount = "loyalty_discount"
        }

        public init(boxType: String? = nil, channelOrderId: String? = nil, channelShipmentId: String? = nil, couponCode: String? = nil, dueDate: String? = nil, employeeDiscount: Double? = nil, isPriority: Bool? = nil, loyaltyDiscount: Double? = nil, marketplaceInvoiceId: String? = nil, orderItemId: String? = nil, quantity: Int? = nil, replacementDetails: ReplacementDetails? = nil, sizeLevelTotalQty: Int? = nil) {
            self.channelOrderId = channelOrderId

            self.dueDate = dueDate

            self.channelShipmentId = channelShipmentId

            self.boxType = boxType

            self.couponCode = couponCode

            self.orderItemId = orderItemId

            self.isPriority = isPriority

            self.quantity = quantity

            self.replacementDetails = replacementDetails

            self.marketplaceInvoiceId = marketplaceInvoiceId

            self.sizeLevelTotalQty = sizeLevelTotalQty

            self.employeeDiscount = employeeDiscount

            self.loyaltyDiscount = loyaltyDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channelOrderId = try container.decode(String.self, forKey: .channelOrderId)

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
                channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

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
                orderItemId = try container.decode(String.self, forKey: .orderItemId)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementDetails = try container.decode(ReplacementDetails.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceInvoiceId = try container.decode(String.self, forKey: .marketplaceInvoiceId)

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

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(channelOrderId, forKey: .channelOrderId)

            try? container.encode(dueDate, forKey: .dueDate)

            try? container.encode(channelShipmentId, forKey: .channelShipmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encode(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(orderItemId, forKey: .orderItemId)

            try? container.encodeIfPresent(isPriority, forKey: .isPriority)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encode(marketplaceInvoiceId, forKey: .marketplaceInvoiceId)

            try? container.encode(sizeLevelTotalQty, forKey: .sizeLevelTotalQty)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
        }
    }
}
