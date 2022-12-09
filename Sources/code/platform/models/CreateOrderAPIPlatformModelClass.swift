

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: OrderManage
     */

    class CreateOrderAPI: Codable {
        public var applicationId: String

        public var currencyInfo: [String: Any]

        public var shipments: [Shipment]

        public var charges: [Charge]

        public var externalCreationDate: String?

        public var shippingInfo: ShippingInfo

        public var paymentInfo: PaymentInfo

        public var meta: [String: Any]?

        public var billingInfo: BillingInfo

        public var taxInfo: TaxInfo?

        public var externalOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case currencyInfo = "currency_info"

            case shipments

            case charges

            case externalCreationDate = "external_creation_date"

            case shippingInfo = "shipping_info"

            case paymentInfo = "payment_info"

            case meta

            case billingInfo = "billing_info"

            case taxInfo = "tax_info"

            case externalOrderId = "external_order_id"
        }

        public init(applicationId: String, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.applicationId = applicationId

            self.currencyInfo = currencyInfo

            self.shipments = shipments

            self.charges = charges

            self.externalCreationDate = externalCreationDate

            self.shippingInfo = shippingInfo

            self.paymentInfo = paymentInfo

            self.meta = meta

            self.billingInfo = billingInfo

            self.taxInfo = taxInfo

            self.externalOrderId = externalOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
        }
    }
}
