

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var shippingInfo: ShippingInfo

        public var paymentInfo: PaymentInfo

        public var billingInfo: BillingInfo

        public var externalOrderId: String?

        public var shipments: [Shipment]

        public var meta: [String: Any]?

        public var taxInfo: TaxInfo?

        public var charges: [Charge]?

        public var externalCreationDate: String?

        public var currencyInfo: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case shippingInfo = "shipping_info"

            case paymentInfo = "payment_info"

            case billingInfo = "billing_info"

            case externalOrderId = "external_order_id"

            case shipments

            case meta

            case taxInfo = "tax_info"

            case charges

            case externalCreationDate = "external_creation_date"

            case currencyInfo = "currency_info"
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.shippingInfo = shippingInfo

            self.paymentInfo = paymentInfo

            self.billingInfo = billingInfo

            self.externalOrderId = externalOrderId

            self.shipments = shipments

            self.meta = meta

            self.taxInfo = taxInfo

            self.charges = charges

            self.externalCreationDate = externalCreationDate

            self.currencyInfo = currencyInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

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

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

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

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
        }
    }
}
