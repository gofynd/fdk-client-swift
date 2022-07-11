

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var dpDetails: DPDetails?

        public var platformLogo: String

        public var totalItems: Int?

        public var deliveryDetails: UserDetailsData?

        public var journeyType: String

        public var gstDetails: ShipmentGSTData?

        public var trackingList: [TrackingList]?

        public var pickedDate: String

        public var packagingType: String

        public var shipmentId: String

        public var bags: [String: Any]

        public var payments: ShipmentPayments?

        public var bagStatusHistory: [BagStatusHistory]?

        public var vertical: String?

        public var order: OrderDetailsData?

        public var status: ShipmentStatusData?

        public var billingDetails: UserDetailsData?

        public var paymentMode: String

        public var prices: [String: Any]

        public var deliverySlot: [String: Any]

        public var fulfillingStore: FulfillingStore?

        public var userAgent: String

        public var shipmentQuantity: Int

        public var priorityText: String?

        public enum CodingKeys: String, CodingKey {
            case dpDetails = "dp_details"

            case platformLogo = "platform_logo"

            case totalItems = "total_items"

            case deliveryDetails = "delivery_details"

            case journeyType = "journey_type"

            case gstDetails = "gst_details"

            case trackingList = "tracking_list"

            case pickedDate = "picked_date"

            case packagingType = "packaging_type"

            case shipmentId = "shipment_id"

            case bags

            case payments

            case bagStatusHistory = "bag_status_history"

            case vertical

            case order

            case status

            case billingDetails = "billing_details"

            case paymentMode = "payment_mode"

            case prices

            case deliverySlot = "delivery_slot"

            case fulfillingStore = "fulfilling_store"

            case userAgent = "user_agent"

            case shipmentQuantity = "shipment_quantity"

            case priorityText = "priority_text"
        }

        public init(bags: [String: Any], bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, fulfillingStore: FulfillingStore? = nil, gstDetails: ShipmentGSTData? = nil, journeyType: String, order: OrderDetailsData? = nil, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, pickedDate: String, platformLogo: String, prices: [String: Any], priorityText: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String, vertical: String? = nil) {
            self.dpDetails = dpDetails

            self.platformLogo = platformLogo

            self.totalItems = totalItems

            self.deliveryDetails = deliveryDetails

            self.journeyType = journeyType

            self.gstDetails = gstDetails

            self.trackingList = trackingList

            self.pickedDate = pickedDate

            self.packagingType = packagingType

            self.shipmentId = shipmentId

            self.bags = bags

            self.payments = payments

            self.bagStatusHistory = bagStatusHistory

            self.vertical = vertical

            self.order = order

            self.status = status

            self.billingDetails = billingDetails

            self.paymentMode = paymentMode

            self.prices = prices

            self.deliverySlot = deliverySlot

            self.fulfillingStore = fulfillingStore

            self.userAgent = userAgent

            self.shipmentQuantity = shipmentQuantity

            self.priorityText = priorityText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(String.self, forKey: .platformLogo)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                gstDetails = try container.decode(ShipmentGSTData.self, forKey: .gstDetails)

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

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            bags = try container.decode([String: Any].self, forKey: .bags)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

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
                vertical = try container.decode(String.self, forKey: .vertical)

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
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            prices = try container.decode([String: Any].self, forKey: .prices)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)
        }
    }
}
