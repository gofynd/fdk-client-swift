

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var priorityText: String?

        public var bagStatusHistory: [BagStatusHistory]?

        public var order: OrderDetailsData?

        public var enableDpTracking: Bool?

        public var gstDetails: GSTDetailsData?

        public var userAgent: String?

        public var vertical: String?

        public var billingDetails: UserDetailsData?

        public var coupon: [String: Any]?

        public var dpDetails: DPDetailsData?

        public var status: ShipmentStatusData?

        public var bags: [OrderBags]?

        public var deliveryDetails: UserDetailsData?

        public var fulfillingStore: FulfillingStore?

        public var totalBags: Int?

        public var shipmentQuantity: Int?

        public var shipmentId: String

        public var prices: Prices?

        public var orderingStore: OrderingStore?

        public var operationalStatus: String?

        public var trackingList: [TrackingList]?

        public var shipmentImages: [String]?

        public var customMeta: [[String: Any]]?

        public var totalItems: Int?

        public var pickedDate: String?

        public var platformLogo: String?

        public var packagingType: String?

        public var paymentMode: String?

        public var shipmentStatus: String?

        public var payments: ShipmentPayments?

        public var journeyType: String?

        public var deliverySlot: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case priorityText = "priority_text"

            case bagStatusHistory = "bag_status_history"

            case order

            case enableDpTracking = "enable_dp_tracking"

            case gstDetails = "gst_details"

            case userAgent = "user_agent"

            case vertical

            case billingDetails = "billing_details"

            case coupon

            case dpDetails = "dp_details"

            case status

            case bags

            case deliveryDetails = "delivery_details"

            case fulfillingStore = "fulfilling_store"

            case totalBags = "total_bags"

            case shipmentQuantity = "shipment_quantity"

            case shipmentId = "shipment_id"

            case prices

            case orderingStore = "ordering_store"

            case operationalStatus = "operational_status"

            case trackingList = "tracking_list"

            case shipmentImages = "shipment_images"

            case customMeta = "custom_meta"

            case totalItems = "total_items"

            case pickedDate = "picked_date"

            case platformLogo = "platform_logo"

            case packagingType = "packaging_type"

            case paymentMode = "payment_mode"

            case shipmentStatus = "shipment_status"

            case payments

            case journeyType = "journey_type"

            case deliverySlot = "delivery_slot"
        }

        public init(bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, coupon: [String: Any]? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, fulfillingStore: FulfillingStore? = nil, gstDetails: GSTDetailsData? = nil, journeyType: String? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStore? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.priorityText = priorityText

            self.bagStatusHistory = bagStatusHistory

            self.order = order

            self.enableDpTracking = enableDpTracking

            self.gstDetails = gstDetails

            self.userAgent = userAgent

            self.vertical = vertical

            self.billingDetails = billingDetails

            self.coupon = coupon

            self.dpDetails = dpDetails

            self.status = status

            self.bags = bags

            self.deliveryDetails = deliveryDetails

            self.fulfillingStore = fulfillingStore

            self.totalBags = totalBags

            self.shipmentQuantity = shipmentQuantity

            self.shipmentId = shipmentId

            self.prices = prices

            self.orderingStore = orderingStore

            self.operationalStatus = operationalStatus

            self.trackingList = trackingList

            self.shipmentImages = shipmentImages

            self.customMeta = customMeta

            self.totalItems = totalItems

            self.pickedDate = pickedDate

            self.platformLogo = platformLogo

            self.packagingType = packagingType

            self.paymentMode = paymentMode

            self.shipmentStatus = shipmentStatus

            self.payments = payments

            self.journeyType = journeyType

            self.deliverySlot = deliverySlot
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userAgent = try container.decode(String.self, forKey: .userAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([OrderBags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalBags = try container.decode(Int.self, forKey: .totalBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(OrderingStore.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickedDate = try container.decode(String.self, forKey: .pickedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingType = try container.decode(String.self, forKey: .packagingType)

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
                shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
        }
    }
}
