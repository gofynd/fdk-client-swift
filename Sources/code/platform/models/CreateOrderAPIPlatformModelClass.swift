

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var applicationId: String

        public var billingInfo: BillingInfo

        public var taxInfo: TaxInfo?

        public var externalOrderId: String?

        public var externalCreationDate: String?

        public var paymentInfo: PaymentInfo

        public var shippingInfo: ShippingInfo

        public var currencyInfo: [String: Any]

        public var meta: [String: Any]?

        public var shipments: [Shipment]

        public var charges: [Charge]

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case billingInfo = "billing_info"

            case taxInfo = "tax_info"

            case externalOrderId = "external_order_id"

            case externalCreationDate = "external_creation_date"

            case paymentInfo = "payment_info"

            case shippingInfo = "shipping_info"

            case currencyInfo = "currency_info"

            case meta

            case shipments

            case charges
        }

        public init(applicationId: String, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.applicationId = applicationId

            self.billingInfo = billingInfo

            self.taxInfo = taxInfo

            self.externalOrderId = externalOrderId

            self.externalCreationDate = externalCreationDate

            self.paymentInfo = paymentInfo

            self.shippingInfo = shippingInfo

            self.currencyInfo = currencyInfo

            self.meta = meta

            self.shipments = shipments

            self.charges = charges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

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
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            charges = try container.decode([Charge].self, forKey: .charges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(charges, forKey: .charges)
        }
    }
}
