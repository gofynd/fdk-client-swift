

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var order: OrderDetails?

        public var paymentMode: String

        public var bagStatusHistory: [String]?

        public var deliverySlot: [String: Any]

        public var shipmentQuantity: Int

        public var fulfillingStore: FulfillingStore?

        public var shipmentId: String

        public var deliveryDetails: UserDetails?

        public var shipmentPrices: ShipmentPrices?

        public var billingDetails: UserDetails?

        public var journeyType: String

        public var dpDetails: DPDetails?

        public var bags: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case order

            case paymentMode = "payment_mode"

            case bagStatusHistory = "bag_status_history"

            case deliverySlot = "delivery_slot"

            case shipmentQuantity = "shipment_quantity"

            case fulfillingStore = "fulfilling_store"

            case shipmentId = "shipment_id"

            case deliveryDetails = "delivery_details"

            case shipmentPrices = "shipment_prices"

            case billingDetails = "billing_details"

            case journeyType = "journey_type"

            case dpDetails = "dp_details"

            case bags
        }

        public init(bags: [String: Any], bagStatusHistory: [String]? = nil, billingDetails: UserDetails? = nil, deliveryDetails: UserDetails? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, fulfillingStore: FulfillingStore? = nil, journeyType: String, order: OrderDetails? = nil, paymentMode: String, shipmentId: String, shipmentPrices: ShipmentPrices? = nil, shipmentQuantity: Int) {
            self.order = order

            self.paymentMode = paymentMode

            self.bagStatusHistory = bagStatusHistory

            self.deliverySlot = deliverySlot

            self.shipmentQuantity = shipmentQuantity

            self.fulfillingStore = fulfillingStore

            self.shipmentId = shipmentId

            self.deliveryDetails = deliveryDetails

            self.shipmentPrices = shipmentPrices

            self.billingDetails = billingDetails

            self.journeyType = journeyType

            self.dpDetails = dpDetails

            self.bags = bags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDetails.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                bagStatusHistory = try container.decode([String].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                deliveryDetails = try container.decode(UserDetails.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentPrices = try container.decode(ShipmentPrices.self, forKey: .shipmentPrices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingDetails = try container.decode(UserDetails.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([String: Any].self, forKey: .bags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(shipmentPrices, forKey: .shipmentPrices)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)
        }
    }
}
