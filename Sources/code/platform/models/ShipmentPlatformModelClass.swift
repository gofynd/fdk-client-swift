

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var billingDetails: UserDetailsData?

        public var enableDpTracking: String

        public var payments: ShipmentPayments?

        public var journeyType: String

        public var pickedDate: String

        public var shipmentId: String

        public var status: ShipmentStatusData?

        public var deliveryDetails: UserDetailsData?

        public var bagStatusHistory: [BagStatusHistory]?

        public var platformLogo: String

        public var vertical: String?

        public var paymentMode: String

        public var dpDetails: DPDetails?

        public var prices: Prices?

        public var fulfillingStore: FulfillingStore?

        public var userAgent: String

        public var totalItems: Int?

        public var deliverySlot: [String: Any]

        public var bags: OrderBags?

        public var trackingList: [TrackingList]?

        public var order: OrderDetailsData?

        public var gstDetails: GST?

        public var packagingType: String

        public var priorityText: String?

        public var shipmentQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case billingDetails = "billing_details"

            case enableDpTracking = "enable_dp_tracking"

            case payments

            case journeyType = "journey_type"

            case pickedDate = "picked_date"

            case shipmentId = "shipment_id"

            case status

            case deliveryDetails = "delivery_details"

            case bagStatusHistory = "bag_status_history"

            case platformLogo = "platform_logo"

            case vertical

            case paymentMode = "payment_mode"

            case dpDetails = "dp_details"

            case prices

            case fulfillingStore = "fulfilling_store"

            case userAgent = "user_agent"

            case totalItems = "total_items"

            case deliverySlot = "delivery_slot"

            case bags

            case trackingList = "tracking_list"

            case order

            case gstDetails = "gst_details"

            case packagingType = "packaging_type"

            case priorityText = "priority_text"

            case shipmentQuantity = "shipment_quantity"
        }

        public init(bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, enableDpTracking: String, fulfillingStore: FulfillingStore? = nil, gstDetails: GST? = nil, journeyType: String, order: OrderDetailsData? = nil, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, pickedDate: String, platformLogo: String, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String, vertical: String? = nil) {
            self.billingDetails = billingDetails

            self.enableDpTracking = enableDpTracking

            self.payments = payments

            self.journeyType = journeyType

            self.pickedDate = pickedDate

            self.shipmentId = shipmentId

            self.status = status

            self.deliveryDetails = deliveryDetails

            self.bagStatusHistory = bagStatusHistory

            self.platformLogo = platformLogo

            self.vertical = vertical

            self.paymentMode = paymentMode

            self.dpDetails = dpDetails

            self.prices = prices

            self.fulfillingStore = fulfillingStore

            self.userAgent = userAgent

            self.totalItems = totalItems

            self.deliverySlot = deliverySlot

            self.bags = bags

            self.trackingList = trackingList

            self.order = order

            self.gstDetails = gstDetails

            self.packagingType = packagingType

            self.priorityText = priorityText

            self.shipmentQuantity = shipmentQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(String.self, forKey: .platformLogo)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

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
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)
        }
    }
}
