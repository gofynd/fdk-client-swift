

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var totalItems: Int?

        public var bags: OrderBags?

        public var deliveryDetails: UserDetailsData?

        public var payments: ShipmentPayments?

        public var paymentMode: String

        public var shipmentQuantity: Int

        public var userAgent: String

        public var trackingList: [TrackingList]?

        public var vertical: String?

        public var bagStatusHistory: [BagStatusHistory]?

        public var deliverySlot: [String: Any]

        public var dpDetails: DPDetails?

        public var prices: Prices?

        public var order: OrderDetailsData?

        public var billingDetails: UserDetailsData?

        public var fulfillingStore: FulfillingStore?

        public var gstDetails: GST?

        public var packagingType: String

        public var journeyType: String

        public var status: ShipmentStatusData?

        public var priorityText: String?

        public var shipmentId: String

        public var pickedDate: String

        public var enableDpTracking: String

        public var platformLogo: String

        public enum CodingKeys: String, CodingKey {
            case totalItems = "total_items"

            case bags

            case deliveryDetails = "delivery_details"

            case payments

            case paymentMode = "payment_mode"

            case shipmentQuantity = "shipment_quantity"

            case userAgent = "user_agent"

            case trackingList = "tracking_list"

            case vertical

            case bagStatusHistory = "bag_status_history"

            case deliverySlot = "delivery_slot"

            case dpDetails = "dp_details"

            case prices

            case order

            case billingDetails = "billing_details"

            case fulfillingStore = "fulfilling_store"

            case gstDetails = "gst_details"

            case packagingType = "packaging_type"

            case journeyType = "journey_type"

            case status

            case priorityText = "priority_text"

            case shipmentId = "shipment_id"

            case pickedDate = "picked_date"

            case enableDpTracking = "enable_dp_tracking"

            case platformLogo = "platform_logo"
        }

        public init(bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, enableDpTracking: String, fulfillingStore: FulfillingStore? = nil, gstDetails: GST? = nil, journeyType: String, order: OrderDetailsData? = nil, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, pickedDate: String, platformLogo: String, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String, vertical: String? = nil) {
            self.totalItems = totalItems

            self.bags = bags

            self.deliveryDetails = deliveryDetails

            self.payments = payments

            self.paymentMode = paymentMode

            self.shipmentQuantity = shipmentQuantity

            self.userAgent = userAgent

            self.trackingList = trackingList

            self.vertical = vertical

            self.bagStatusHistory = bagStatusHistory

            self.deliverySlot = deliverySlot

            self.dpDetails = dpDetails

            self.prices = prices

            self.order = order

            self.billingDetails = billingDetails

            self.fulfillingStore = fulfillingStore

            self.gstDetails = gstDetails

            self.packagingType = packagingType

            self.journeyType = journeyType

            self.status = status

            self.priorityText = priorityText

            self.shipmentId = shipmentId

            self.pickedDate = pickedDate

            self.enableDpTracking = enableDpTracking

            self.platformLogo = platformLogo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            platformLogo = try container.decode(String.self, forKey: .platformLogo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)
        }
    }
}
