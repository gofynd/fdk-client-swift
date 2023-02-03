

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var currencyInfo: [String: Any]

        public var charges: [Charge]

        public var taxInfo: TaxInfo?

        public var externalCreationDate: String?

        public var shippingInfo: ShippingInfo

        public var billingInfo: BillingInfo

        public var externalOrderId: String?

        public var shipments: [Shipment]

        public var applicationId: String?

        public var meta: [String: Any]?

        public var paymentInfo: PaymentInfo

        public enum CodingKeys: String, CodingKey {
            case currencyInfo = "currency_info"

            case charges

            case taxInfo = "tax_info"

            case externalCreationDate = "external_creation_date"

            case shippingInfo = "shipping_info"

            case billingInfo = "billing_info"

            case externalOrderId = "external_order_id"

            case shipments

            case applicationId = "application_id"

            case meta

            case paymentInfo = "payment_info"
        }

        public init(applicationId: String? = nil, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.currencyInfo = currencyInfo

            self.charges = charges

            self.taxInfo = taxInfo

            self.externalCreationDate = externalCreationDate

            self.shippingInfo = shippingInfo

            self.billingInfo = billingInfo

            self.externalOrderId = externalOrderId

            self.shipments = shipments

            self.applicationId = applicationId

            self.meta = meta

            self.paymentInfo = paymentInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            charges = try container.decode([Charge].self, forKey: .charges)

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

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

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

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
        }
    }
}
