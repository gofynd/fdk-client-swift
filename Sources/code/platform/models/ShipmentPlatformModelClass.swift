

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var prices: [String: Any]

        public var bagStatusHistory: [BagStatusHistory]?

        public var packagingType: String

        public var shipmentQuantity: Int

        public var userAgent: String

        public var deliverySlot: [String: Any]

        public var bags: [String: Any]

        public var dpDetails: DPDetails?

        public var gstDetails: ShipmentGSTData?

        public var payments: ShipmentPayments?

        public var vertical: String?

        public var order: OrderDetailsData?

        public var status: ShipmentStatusData?

        public var fulfillingStore: FulfillingStore?

        public var shipmentId: String

        public var trackingList: [TrackingList]?

        public var totalItems: Int?

        public var platformLogo: String

        public var paymentMode: String

        public var journeyType: String

        public var priorityText: String?

        public var billingDetails: UserDetailsData?

        public var pickedDate: String

        public var deliveryDetails: UserDetailsData?

        public enum CodingKeys: String, CodingKey {
            case prices

            case bagStatusHistory = "bag_status_history"

            case packagingType = "packaging_type"

            case shipmentQuantity = "shipment_quantity"

            case userAgent = "user_agent"

            case deliverySlot = "delivery_slot"

            case bags

            case dpDetails = "dp_details"

            case gstDetails = "gst_details"

            case payments

            case vertical

            case order

            case status

            case fulfillingStore = "fulfilling_store"

            case shipmentId = "shipment_id"

            case trackingList = "tracking_list"

            case totalItems = "total_items"

            case platformLogo = "platform_logo"

            case paymentMode = "payment_mode"

            case journeyType = "journey_type"

            case priorityText = "priority_text"

            case billingDetails = "billing_details"

            case pickedDate = "picked_date"

            case deliveryDetails = "delivery_details"
        }

        public init(bags: [String: Any], bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, fulfillingStore: FulfillingStore? = nil, gstDetails: ShipmentGSTData? = nil, journeyType: String, order: OrderDetailsData? = nil, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, pickedDate: String, platformLogo: String, prices: [String: Any], priorityText: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String, vertical: String? = nil) {
            self.prices = prices

            self.bagStatusHistory = bagStatusHistory

            self.packagingType = packagingType

            self.shipmentQuantity = shipmentQuantity

            self.userAgent = userAgent

            self.deliverySlot = deliverySlot

            self.bags = bags

            self.dpDetails = dpDetails

            self.gstDetails = gstDetails

            self.payments = payments

            self.vertical = vertical

            self.order = order

            self.status = status

            self.fulfillingStore = fulfillingStore

            self.shipmentId = shipmentId

            self.trackingList = trackingList

            self.totalItems = totalItems

            self.platformLogo = platformLogo

            self.paymentMode = paymentMode

            self.journeyType = journeyType

            self.priorityText = priorityText

            self.billingDetails = billingDetails

            self.pickedDate = pickedDate

            self.deliveryDetails = deliveryDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            prices = try container.decode([String: Any].self, forKey: .prices)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            bags = try container.decode([String: Any].self, forKey: .bags)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(ShipmentGSTData.self, forKey: .gstDetails)

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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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

            platformLogo = try container.decode(String.self, forKey: .platformLogo)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journeyType = try container.decode(String.self, forKey: .journeyType)

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

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)
        }
    }
}
