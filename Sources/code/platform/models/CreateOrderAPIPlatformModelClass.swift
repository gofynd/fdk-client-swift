

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var charges: [Charge]

        public var externalOrderId: String?

        public var billingInfo: BillingInfo

        public var paymentInfo: PaymentInfo

        public var meta: [String: Any]?

        public var externalCreationDate: String?

        public var currencyInfo: [String: Any]

        public var applicationId: String

        public var shipments: [Shipment]

        public var taxInfo: TaxInfo?

        public var shippingInfo: ShippingInfo

        public enum CodingKeys: String, CodingKey {
            case charges

            case externalOrderId = "external_order_id"

            case billingInfo = "billing_info"

            case paymentInfo = "payment_info"

            case meta

            case externalCreationDate = "external_creation_date"

            case currencyInfo = "currency_info"

            case applicationId = "application_id"

            case shipments

            case taxInfo = "tax_info"

            case shippingInfo = "shipping_info"
        }

        public init(applicationId: String, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.charges = charges

            self.externalOrderId = externalOrderId

            self.billingInfo = billingInfo

            self.paymentInfo = paymentInfo

            self.meta = meta

            self.externalCreationDate = externalCreationDate

            self.currencyInfo = currencyInfo

            self.applicationId = applicationId

            self.shipments = shipments

            self.taxInfo = taxInfo

            self.shippingInfo = shippingInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

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

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)
        }
    }
}
