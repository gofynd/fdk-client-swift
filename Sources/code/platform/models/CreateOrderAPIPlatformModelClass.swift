

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var externalOrderId: String?

        public var externalCreationDate: String?

        public var currencyInfo: [String: Any]

        public var billingInfo: BillingInfo

        public var applicationId: String

        public var meta: [String: Any]?

        public var shipments: [Shipment]

        public var shippingInfo: ShippingInfo

        public var taxInfo: TaxInfo?

        public var paymentInfo: PaymentInfo

        public var charges: [Charge]

        public enum CodingKeys: String, CodingKey {
            case externalOrderId = "external_order_id"

            case externalCreationDate = "external_creation_date"

            case currencyInfo = "currency_info"

            case billingInfo = "billing_info"

            case applicationId = "application_id"

            case meta

            case shipments

            case shippingInfo = "shipping_info"

            case taxInfo = "tax_info"

            case paymentInfo = "payment_info"

            case charges
        }

        public init(applicationId: String, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.externalOrderId = externalOrderId

            self.externalCreationDate = externalCreationDate

            self.currencyInfo = currencyInfo

            self.billingInfo = billingInfo

            self.applicationId = applicationId

            self.meta = meta

            self.shipments = shipments

            self.shippingInfo = shippingInfo

            self.taxInfo = taxInfo

            self.paymentInfo = paymentInfo

            self.charges = charges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            charges = try container.decode([Charge].self, forKey: .charges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)
        }
    }
}
