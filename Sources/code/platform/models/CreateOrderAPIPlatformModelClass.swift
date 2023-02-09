

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var meta: [String: Any]?

        public var shippingInfo: ShippingInfo

        public var shipments: [Shipment]

        public var externalOrderId: String?

        public var billingInfo: BillingInfo

        public var currencyInfo: [String: Any]

        public var paymentInfo: PaymentInfo

        public var applicationId: String?

        public var taxInfo: TaxInfo?

        public var externalCreationDate: String?

        public var charges: [Charge]

        public enum CodingKeys: String, CodingKey {
            case meta

            case shippingInfo = "shipping_info"

            case shipments

            case externalOrderId = "external_order_id"

            case billingInfo = "billing_info"

            case currencyInfo = "currency_info"

            case paymentInfo = "payment_info"

            case applicationId = "application_id"

            case taxInfo = "tax_info"

            case externalCreationDate = "external_creation_date"

            case charges
        }

        public init(applicationId: String? = nil, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.meta = meta

            self.shippingInfo = shippingInfo

            self.shipments = shipments

            self.externalOrderId = externalOrderId

            self.billingInfo = billingInfo

            self.currencyInfo = currencyInfo

            self.paymentInfo = paymentInfo

            self.applicationId = applicationId

            self.taxInfo = taxInfo

            self.externalCreationDate = externalCreationDate

            self.charges = charges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

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
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            charges = try container.decode([Charge].self, forKey: .charges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(charges, forKey: .charges)
        }
    }
}
