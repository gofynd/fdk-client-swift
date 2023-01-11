

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var shipments: [Shipment]

        public var charges: [Charge]

        public var meta: [String: Any]?

        public var shippingInfo: ShippingInfo

        public var paymentInfo: PaymentInfo

        public var taxInfo: TaxInfo?

        public var externalOrderId: String?

        public var currencyInfo: [String: Any]?

        public var billingInfo: BillingInfo

        public var externalCreationDate: String?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case charges

            case meta

            case shippingInfo = "shipping_info"

            case paymentInfo = "payment_info"

            case taxInfo = "tax_info"

            case externalOrderId = "external_order_id"

            case currencyInfo = "currency_info"

            case billingInfo = "billing_info"

            case externalCreationDate = "external_creation_date"
        }

        public init(billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.shipments = shipments

            self.charges = charges

            self.meta = meta

            self.shippingInfo = shippingInfo

            self.paymentInfo = paymentInfo

            self.taxInfo = taxInfo

            self.externalOrderId = externalOrderId

            self.currencyInfo = currencyInfo

            self.billingInfo = billingInfo

            self.externalCreationDate = externalCreationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

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
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)
        }
    }
}
