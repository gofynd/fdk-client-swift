

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var shipmentId: String

        public var payments: ShipmentPayments?

        public var priorityText: String?

        public var billingDetails: UserDetailsData?

        public var paymentMode: String

        public var totalItems: Int?

        public var bags: OrderBags?

        public var deliverySlot: [String: Any]

        public var enableDpTracking: String

        public var status: ShipmentStatusData?

        public var gstDetails: GST?

        public var pickedDate: String

        public var journeyType: String

        public var bagStatusHistory: [BagStatusHistory]?

        public var platformLogo: String

        public var packagingType: String

        public var fulfillingStore: FulfillingStore?

        public var vertical: String?

        public var trackingList: [TrackingList]?

        public var userAgent: String

        public var shipmentQuantity: Int

        public var deliveryDetails: UserDetailsData?

        public var prices: Prices?

        public var dpDetails: DPDetails?

        public var order: OrderDetailsData?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case payments

            case priorityText = "priority_text"

            case billingDetails = "billing_details"

            case paymentMode = "payment_mode"

            case totalItems = "total_items"

            case bags

            case deliverySlot = "delivery_slot"

            case enableDpTracking = "enable_dp_tracking"

            case status

            case gstDetails = "gst_details"

            case pickedDate = "picked_date"

            case journeyType = "journey_type"

            case bagStatusHistory = "bag_status_history"

            case platformLogo = "platform_logo"

            case packagingType = "packaging_type"

            case fulfillingStore = "fulfilling_store"

            case vertical

            case trackingList = "tracking_list"

            case userAgent = "user_agent"

            case shipmentQuantity = "shipment_quantity"

            case deliveryDetails = "delivery_details"

            case prices

            case dpDetails = "dp_details"

            case order
        }

        public init(bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, enableDpTracking: String, fulfillingStore: FulfillingStore? = nil, gstDetails: GST? = nil, journeyType: String, order: OrderDetailsData? = nil, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, pickedDate: String, platformLogo: String, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String, vertical: String? = nil) {
            self.shipmentId = shipmentId

            self.payments = payments

            self.priorityText = priorityText

            self.billingDetails = billingDetails

            self.paymentMode = paymentMode

            self.totalItems = totalItems

            self.bags = bags

            self.deliverySlot = deliverySlot

            self.enableDpTracking = enableDpTracking

            self.status = status

            self.gstDetails = gstDetails

            self.pickedDate = pickedDate

            self.journeyType = journeyType

            self.bagStatusHistory = bagStatusHistory

            self.platformLogo = platformLogo

            self.packagingType = packagingType

            self.fulfillingStore = fulfillingStore

            self.vertical = vertical

            self.trackingList = trackingList

            self.userAgent = userAgent

            self.shipmentQuantity = shipmentQuantity

            self.deliveryDetails = deliveryDetails

            self.prices = prices

            self.dpDetails = dpDetails

            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(String.self, forKey: .platformLogo)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}
