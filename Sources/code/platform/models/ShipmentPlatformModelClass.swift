

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var dpDetails: DPDetails?

        public var deliverySlot: [String: Any]

        public var shipmentQuantity: Int

        public var deliveryDetails: UserDetailsData?

        public var journeyType: String

        public var shipmentId: String

        public var paymentMode: String

        public var order: OrderDetailsData?

        public var bagStatusHistory: [String]?

        public var billingDetails: UserDetailsData?

        public var shipmentPrices: ShipmentPricesData?

        public var fulfillingStore: FulfillingStore?

        public var bags: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case dpDetails = "dp_details"

            case deliverySlot = "delivery_slot"

            case shipmentQuantity = "shipment_quantity"

            case deliveryDetails = "delivery_details"

            case journeyType = "journey_type"

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"

            case order

            case bagStatusHistory = "bag_status_history"

            case billingDetails = "billing_details"

            case shipmentPrices = "shipment_prices"

            case fulfillingStore = "fulfilling_store"

            case bags
        }

        public init(bags: [String: Any], bagStatusHistory: [String]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, fulfillingStore: FulfillingStore? = nil, journeyType: String, order: OrderDetailsData? = nil, paymentMode: String, shipmentId: String, shipmentPrices: ShipmentPricesData? = nil, shipmentQuantity: Int) {
            self.dpDetails = dpDetails

            self.deliverySlot = deliverySlot

            self.shipmentQuantity = shipmentQuantity

            self.deliveryDetails = deliveryDetails

            self.journeyType = journeyType

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode

            self.order = order

            self.bagStatusHistory = bagStatusHistory

            self.billingDetails = billingDetails

            self.shipmentPrices = shipmentPrices

            self.fulfillingStore = fulfillingStore

            self.bags = bags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([String: Any].self, forKey: .bags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(shipmentPrices, forKey: .shipmentPrices)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)
        }
    }
}
