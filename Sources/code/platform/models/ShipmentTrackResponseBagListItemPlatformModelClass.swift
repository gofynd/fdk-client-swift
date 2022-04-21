

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTrackResponseBagListItem
         Used By: Order
     */

    class ShipmentTrackResponseBagListItem: Codable {
        public var enableTracking: Bool?

        public var price: String?

        public var timeSlot: String?

        public var productName: String?

        public var canReturn: Bool?

        public var orderDate: String?

        public var isTryAtHome: Bool?

        public var breakupValues: [ShipmentTrackResponseBagListItemBreakValues]?

        public var statuses: [ShipmentTrackResponseBagListItemStatuses]?

        public var isActive: Bool?

        public var bagId: String?

        public var orderId: String?

        public var size: String?

        public var paymentModeSource: String?

        public var dpDetails: ShipmentTrackResponseBagListItemDpDetails?

        public var productId: Int?

        public var productImage: ShipmentTrackResponseBagListItemsProductImage?

        public var brandName: String?

        public var priceMarked: String?

        public var status: String?

        public var canCancel: Bool?

        public var paymentMode: String?

        public var fyndCashMsg: String?

        public var deliveryAddress: String?

        public enum CodingKeys: String, CodingKey {
            case enableTracking = "enable_tracking"

            case price

            case timeSlot = "time_slot"

            case productName = "product_name"

            case canReturn = "can_return"

            case orderDate = "order_date"

            case isTryAtHome = "is_try_at_home"

            case breakupValues = "breakup_values"

            case statuses

            case isActive = "is_active"

            case bagId = "bag_id"

            case orderId = "order_id"

            case size

            case paymentModeSource = "payment_mode_source"

            case dpDetails = "dp_details"

            case productId = "product_id"

            case productImage = "product_image"

            case brandName = "brand_name"

            case priceMarked = "price_marked"

            case status

            case canCancel = "can_cancel"

            case paymentMode = "payment_mode"

            case fyndCashMsg = "fynd_cash_msg"

            case deliveryAddress = "delivery_address"
        }

        public init(bagId: String? = nil, brandName: String? = nil, breakupValues: [ShipmentTrackResponseBagListItemBreakValues]? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, deliveryAddress: String? = nil, dpDetails: ShipmentTrackResponseBagListItemDpDetails? = nil, enableTracking: Bool? = nil, fyndCashMsg: String? = nil, isActive: Bool? = nil, isTryAtHome: Bool? = nil, orderDate: String? = nil, orderId: String? = nil, paymentMode: String? = nil, paymentModeSource: String? = nil, price: String? = nil, priceMarked: String? = nil, productId: Int? = nil, productImage: ShipmentTrackResponseBagListItemsProductImage? = nil, productName: String? = nil, size: String? = nil, status: String? = nil, statuses: [ShipmentTrackResponseBagListItemStatuses]? = nil, timeSlot: String? = nil) {
            self.enableTracking = enableTracking

            self.price = price

            self.timeSlot = timeSlot

            self.productName = productName

            self.canReturn = canReturn

            self.orderDate = orderDate

            self.isTryAtHome = isTryAtHome

            self.breakupValues = breakupValues

            self.statuses = statuses

            self.isActive = isActive

            self.bagId = bagId

            self.orderId = orderId

            self.size = size

            self.paymentModeSource = paymentModeSource

            self.dpDetails = dpDetails

            self.productId = productId

            self.productImage = productImage

            self.brandName = brandName

            self.priceMarked = priceMarked

            self.status = status

            self.canCancel = canCancel

            self.paymentMode = paymentMode

            self.fyndCashMsg = fyndCashMsg

            self.deliveryAddress = deliveryAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(String.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeSlot = try container.decode(String.self, forKey: .timeSlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productName = try container.decode(String.self, forKey: .productName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderDate = try container.decode(String.self, forKey: .orderDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isTryAtHome = try container.decode(Bool.self, forKey: .isTryAtHome)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([ShipmentTrackResponseBagListItemBreakValues].self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statuses = try container.decode([ShipmentTrackResponseBagListItemStatuses].self, forKey: .statuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(String.self, forKey: .bagId)

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
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentModeSource = try container.decode(String.self, forKey: .paymentModeSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(ShipmentTrackResponseBagListItemDpDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productId = try container.decode(Int.self, forKey: .productId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productImage = try container.decode(ShipmentTrackResponseBagListItemsProductImage.self, forKey: .productImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(String.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                fyndCashMsg = try container.decode(String.self, forKey: .fyndCashMsg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode(String.self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(timeSlot, forKey: .timeSlot)

            try? container.encodeIfPresent(productName, forKey: .productName)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(isTryAtHome, forKey: .isTryAtHome)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(statuses, forKey: .statuses)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(paymentModeSource, forKey: .paymentModeSource)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(productImage, forKey: .productImage)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(fyndCashMsg, forKey: .fyndCashMsg)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
        }
    }
}
