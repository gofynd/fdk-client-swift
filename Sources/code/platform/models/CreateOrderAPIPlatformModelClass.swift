

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var meta: [String: Any]?

        public var charges: [Charge]?

        public var externalOrderId: String?

        public var externalCreationDate: String?

        public var shippingInfo: ShippingInfo

        public var paymentInfo: PaymentInfo

        public var billingInfo: BillingInfo

        public var taxInfo: TaxInfo?

        public var currencyInfo: [String: Any]?

        public var shipments: [Shipment]

        public enum CodingKeys: String, CodingKey {
            case meta

            case charges

            case externalOrderId = "external_order_id"

            case externalCreationDate = "external_creation_date"

            case shippingInfo = "shipping_info"

            case paymentInfo = "payment_info"

            case billingInfo = "billing_info"

            case taxInfo = "tax_info"

            case currencyInfo = "currency_info"

            case shipments
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.meta = meta

            self.charges = charges

            self.externalOrderId = externalOrderId

            self.externalCreationDate = externalCreationDate

            self.shippingInfo = shippingInfo

            self.paymentInfo = paymentInfo

            self.billingInfo = billingInfo

            self.taxInfo = taxInfo

            self.currencyInfo = currencyInfo

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
