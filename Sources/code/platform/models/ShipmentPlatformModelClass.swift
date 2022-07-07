

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Orders
     */

    class Shipment: Codable {
        public var shipmentId: String

        public var dpDetails: DPDetails?

        public var order: OrderDetailsData?

        public var shipmentQuantity: Int

        public var paymentMode: String

        public var deliverySlot: [String: Any]

        public var journeyType: String

        public var shipmentPrices: ShipmentPricesData?

        public var bagStatusHistory: [String]?

        public var fulfillingStore: FulfillingStore?

        public var deliveryDetails: UserDetailsData?

        public var billingDetails: UserDetailsData?

        public var bags: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case dpDetails = "dp_details"

            case order

            case shipmentQuantity = "shipment_quantity"

            case paymentMode = "payment_mode"

            case deliverySlot = "delivery_slot"

            case journeyType = "journey_type"

            case shipmentPrices = "shipment_prices"

            case bagStatusHistory = "bag_status_history"

            case fulfillingStore = "fulfilling_store"

            case deliveryDetails = "delivery_details"

            case billingDetails = "billing_details"

            case bags
        }

        public init(bags: [String: Any], bagStatusHistory: [String]? = nil, billingDetails: UserDetailsData? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], dpDetails: DPDetails? = nil, fulfillingStore: FulfillingStore? = nil, journeyType: String, order: OrderDetailsData? = nil, paymentMode: String, shipmentId: String, shipmentPrices: ShipmentPricesData? = nil, shipmentQuantity: Int) {
            self.shipmentId = shipmentId

            self.dpDetails = dpDetails

            self.order = order

            self.shipmentQuantity = shipmentQuantity

            self.paymentMode = paymentMode

            self.deliverySlot = deliverySlot

            self.journeyType = journeyType

            self.shipmentPrices = shipmentPrices

            self.bagStatusHistory = bagStatusHistory

            self.fulfillingStore = fulfillingStore

            self.deliveryDetails = deliveryDetails

            self.billingDetails = billingDetails

            self.bags = bags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                shipmentPrices = try container.decode(ShipmentPricesData.self, forKey: .shipmentPrices)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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

            bags = try container.decode([String: Any].self, forKey: .bags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(shipmentPrices, forKey: .shipmentPrices)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)
        }
    }
}
