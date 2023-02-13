

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var billingInfo: BillingInfo

        public var applicationId: String?

        public var externalOrderId: String?

        public var currencyInfo: [String: Any]

        public var charges: [Charge]

        public var shippingInfo: ShippingInfo

        public var shipments: [Shipment]

        public var meta: [String: Any]?

        public var taxInfo: TaxInfo?

        public var paymentInfo: PaymentInfo

        public var externalCreationDate: String?

        public enum CodingKeys: String, CodingKey {
            case billingInfo = "billing_info"

            case applicationId = "application_id"

            case externalOrderId = "external_order_id"

            case currencyInfo = "currency_info"

            case charges

            case shippingInfo = "shipping_info"

            case shipments

            case meta

            case taxInfo = "tax_info"

            case paymentInfo = "payment_info"

            case externalCreationDate = "external_creation_date"
        }

        public init(applicationId: String? = nil, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.billingInfo = billingInfo

            self.applicationId = applicationId

            self.externalOrderId = externalOrderId

            self.currencyInfo = currencyInfo

            self.charges = charges

            self.shippingInfo = shippingInfo

            self.shipments = shipments

            self.meta = meta

            self.taxInfo = taxInfo

            self.paymentInfo = paymentInfo

            self.externalCreationDate = externalCreationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

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

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            charges = try container.decode([Charge].self, forKey: .charges)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

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

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)
        }
    }
}
