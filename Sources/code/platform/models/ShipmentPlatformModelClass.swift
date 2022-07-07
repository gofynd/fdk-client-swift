

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var billingDetails: UserDetailsData?

        public var bagStatusHistory: [String]?

        public var fulfillingStore: FulfillingStore?

        public var shipmentPrices: ShipmentPricesData?

        public var dpDetails: DPDetails?

        public var journeyType: String

        public var shipmentId: String

        public var bags: [String: Any]

        public var deliverySlot: [String: Any]

        public var order: OrderDetailsData?

        public var paymentMode: String

        public var deliveryDetails: UserDetailsData?

        public var shipmentQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case billingDetails = "billing_details"

            case bagStatusHistory = "bag_status_history"

            case fulfillingStore = "fulfilling_store"

            case shipmentPrices = "shipment_prices"

            case dpDetails = "dp_details"

            case journeyType = "journey_type"

            case shipmentId = "shipment_id"

            case bags

            case deliverySlot = "delivery_slot"

            case order

            case paymentMode = "payment_mode"

            case deliveryDetails = "delivery_details"

            case shipmentQuantity = "shipment_quantity"
        }

        public init(bags: [String: Any], bagStatusHistory: [String]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, fulfillingStore: FulfillingStore? = nil, journeyType: String, order: OrderDetailsData? = nil, paymentMode: String, shipmentId: String, shipmentPrices: ShipmentPricesData? = nil, shipmentQuantity: Int) {
            self.billingDetails = billingDetails

            self.bagStatusHistory = bagStatusHistory

            self.fulfillingStore = fulfillingStore

            self.shipmentPrices = shipmentPrices

            self.dpDetails = dpDetails

            self.journeyType = journeyType

            self.shipmentId = shipmentId

            self.bags = bags

            self.deliverySlot = deliverySlot

            self.order = order

            self.paymentMode = paymentMode

            self.deliveryDetails = deliveryDetails

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

            do {
                bagStatusHistory = try container.decode([String].self, forKey: .bagStatusHistory)

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
                shipmentPrices = try container.decode(ShipmentPricesData.self, forKey: .shipmentPrices)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            bags = try container.decode([String: Any].self, forKey: .bags)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(shipmentPrices, forKey: .shipmentPrices)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)
        }
    }
}
