

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var userAgent: String

        public var platformLogo: String

        public var priorityText: String?

        public var journeyType: String

        public var deliveryDetails: UserDetailsData?

        public var bags: OrderBags?

        public var paymentMode: String

        public var packagingType: String

        public var shipmentId: String

        public var pickedDate: String

        public var order: OrderDetailsData?

        public var shipmentQuantity: Int

        public var billingDetails: UserDetailsData?

        public var totalItems: Int?

        public var prices: Prices?

        public var status: ShipmentStatusData?

        public var vertical: String?

        public var payments: ShipmentPayments?

        public var deliverySlot: [String: Any]

        public var trackingList: [TrackingList]?

        public var gstDetails: GST?

        public var bagStatusHistory: [BagStatusHistory]?

        public var dpDetails: DPDetails?

        public var enableDpTracking: String

        public var fulfillingStore: FulfillingStore?

        public enum CodingKeys: String, CodingKey {
            case userAgent = "user_agent"

            case platformLogo = "platform_logo"

            case priorityText = "priority_text"

            case journeyType = "journey_type"

            case deliveryDetails = "delivery_details"

            case bags

            case paymentMode = "payment_mode"

            case packagingType = "packaging_type"

            case shipmentId = "shipment_id"

            case pickedDate = "picked_date"

            case order

            case shipmentQuantity = "shipment_quantity"

            case billingDetails = "billing_details"

            case totalItems = "total_items"

            case prices

            case status

            case vertical

            case payments

            case deliverySlot = "delivery_slot"

            case trackingList = "tracking_list"

            case gstDetails = "gst_details"

            case bagStatusHistory = "bag_status_history"

            case dpDetails = "dp_details"

            case enableDpTracking = "enable_dp_tracking"

            case fulfillingStore = "fulfilling_store"
        }

        public init(bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, enableDpTracking: String, fulfillingStore: FulfillingStore? = nil, gstDetails: GST? = nil, journeyType: String, order: OrderDetailsData? = nil, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, pickedDate: String, platformLogo: String, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String, vertical: String? = nil) {
            self.userAgent = userAgent

            self.platformLogo = platformLogo

            self.priorityText = priorityText

            self.journeyType = journeyType

            self.deliveryDetails = deliveryDetails

            self.bags = bags

            self.paymentMode = paymentMode

            self.packagingType = packagingType

            self.shipmentId = shipmentId

            self.pickedDate = pickedDate

            self.order = order

            self.shipmentQuantity = shipmentQuantity

            self.billingDetails = billingDetails

            self.totalItems = totalItems

            self.prices = prices

            self.status = status

            self.vertical = vertical

            self.payments = payments

            self.deliverySlot = deliverySlot

            self.trackingList = trackingList

            self.gstDetails = gstDetails

            self.bagStatusHistory = bagStatusHistory

            self.dpDetails = dpDetails

            self.enableDpTracking = enableDpTracking

            self.fulfillingStore = fulfillingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            platformLogo = try container.decode(String.self, forKey: .platformLogo)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                vertical = try container.decode(String.self, forKey: .vertical)

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

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

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
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
        }
    }
}
