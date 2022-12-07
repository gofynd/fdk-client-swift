

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var shippingInfo: ShippingInfo

        public var paymentInfo: PaymentInfo

        public var meta: [String: Any]?

        public var currencyInfo: [String: Any]

        public var billingInfo: BillingInfo

        public var externalOrderId: String?

        public var applicationId: String

        public var taxInfo: TaxInfo?

        public var externalCreationDate: String?

        public var charges: [Charge]

        public var shipments: [Shipment]

        public enum CodingKeys: String, CodingKey {
            case shippingInfo = "shipping_info"

            case paymentInfo = "payment_info"

            case meta

            case currencyInfo = "currency_info"

            case billingInfo = "billing_info"

            case externalOrderId = "external_order_id"

            case applicationId = "application_id"

            case taxInfo = "tax_info"

            case externalCreationDate = "external_creation_date"

            case charges

            case shipments
        }

        public init(applicationId: String, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.shippingInfo = shippingInfo

            self.paymentInfo = paymentInfo

            self.meta = meta

            self.currencyInfo = currencyInfo

            self.billingInfo = billingInfo

            self.externalOrderId = externalOrderId

            self.applicationId = applicationId

            self.taxInfo = taxInfo

            self.externalCreationDate = externalCreationDate

            self.charges = charges

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

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

            shipments = try container.decode([Shipment].self, forKey: .shipments)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
