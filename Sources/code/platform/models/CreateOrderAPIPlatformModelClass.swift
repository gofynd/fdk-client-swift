

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var billingInfo: BillingInfo

        public var paymentInfo: PaymentInfo

        public var externalCreationDate: String?

        public var taxInfo: TaxInfo?

        public var shipments: [Shipment]

        public var charges: [Charge]

        public var externalOrderId: String?

        public var shippingInfo: ShippingInfo

        public var applicationId: String?

        public var meta: [String: Any]?

        public var currencyInfo: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case billingInfo = "billing_info"

            case paymentInfo = "payment_info"

            case externalCreationDate = "external_creation_date"

            case taxInfo = "tax_info"

            case shipments

            case charges

            case externalOrderId = "external_order_id"

            case shippingInfo = "shipping_info"

            case applicationId = "application_id"

            case meta

            case currencyInfo = "currency_info"
        }

        public init(applicationId: String? = nil, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.billingInfo = billingInfo

            self.paymentInfo = paymentInfo

            self.externalCreationDate = externalCreationDate

            self.taxInfo = taxInfo

            self.shipments = shipments

            self.charges = charges

            self.externalOrderId = externalOrderId

            self.shippingInfo = shippingInfo

            self.applicationId = applicationId

            self.meta = meta

            self.currencyInfo = currencyInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

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

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

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

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
        }
    }
}
