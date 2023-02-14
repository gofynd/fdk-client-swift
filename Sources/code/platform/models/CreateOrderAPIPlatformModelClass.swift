

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var paymentInfo: PaymentInfo

        public var externalOrderId: String?

        public var shipments: [Shipment]

        public var charges: [Charge]

        public var externalCreationDate: String?

        public var billingInfo: BillingInfo

        public var shippingInfo: ShippingInfo

        public var currencyInfo: [String: Any]?

        public var meta: [String: Any]?

        public var taxInfo: TaxInfo?

        public enum CodingKeys: String, CodingKey {
            case paymentInfo = "payment_info"

            case externalOrderId = "external_order_id"

            case shipments

            case charges

            case externalCreationDate = "external_creation_date"

            case billingInfo = "billing_info"

            case shippingInfo = "shipping_info"

            case currencyInfo = "currency_info"

            case meta

            case taxInfo = "tax_info"
        }

        public init(billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.paymentInfo = paymentInfo

            self.externalOrderId = externalOrderId

            self.shipments = shipments

            self.charges = charges

            self.externalCreationDate = externalCreationDate

            self.billingInfo = billingInfo

            self.shippingInfo = shippingInfo

            self.currencyInfo = currencyInfo

            self.meta = meta

            self.taxInfo = taxInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)
        }
    }
}
