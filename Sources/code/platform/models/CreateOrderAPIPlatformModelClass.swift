

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var taxInfo: TaxInfo?

        public var shippingInfo: ShippingInfo

        public var billingInfo: BillingInfo

        public var currencyInfo: [String: Any]?

        public var charges: [Charge]

        public var paymentInfo: PaymentInfo

        public var meta: [String: Any]?

        public var externalCreationDate: String?

        public var shipments: [Shipment]

        public var externalOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case taxInfo = "tax_info"

            case shippingInfo = "shipping_info"

            case billingInfo = "billing_info"

            case currencyInfo = "currency_info"

            case charges

            case paymentInfo = "payment_info"

            case meta

            case externalCreationDate = "external_creation_date"

            case shipments

            case externalOrderId = "external_order_id"
        }

        public init(billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.taxInfo = taxInfo

            self.shippingInfo = shippingInfo

            self.billingInfo = billingInfo

            self.currencyInfo = currencyInfo

            self.charges = charges

            self.paymentInfo = paymentInfo

            self.meta = meta

            self.externalCreationDate = externalCreationDate

            self.shipments = shipments

            self.externalOrderId = externalOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            charges = try container.decode([Charge].self, forKey: .charges)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
        }
    }
}
