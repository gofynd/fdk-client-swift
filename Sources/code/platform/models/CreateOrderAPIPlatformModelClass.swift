

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: OrderManage
     */

    class CreateOrderAPI: Codable {
        public var charges: [Charge]

        public var shippingInfo: ShippingInfo

        public var externalOrderId: String?

        public var externalCreationDate: String?

        public var taxInfo: TaxInfo?

        public var applicationId: String

        public var currencyInfo: [String: Any]

        public var meta: [String: Any]?

        public var shipments: [Shipment]

        public var billingInfo: BillingInfo

        public var paymentInfo: PaymentInfo

        public enum CodingKeys: String, CodingKey {
            case charges

            case shippingInfo = "shipping_info"

            case externalOrderId = "external_order_id"

            case externalCreationDate = "external_creation_date"

            case taxInfo = "tax_info"

            case applicationId = "application_id"

            case currencyInfo = "currency_info"

            case meta

            case shipments

            case billingInfo = "billing_info"

            case paymentInfo = "payment_info"
        }

        public init(applicationId: String, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.charges = charges

            self.shippingInfo = shippingInfo

            self.externalOrderId = externalOrderId

            self.externalCreationDate = externalCreationDate

            self.taxInfo = taxInfo

            self.applicationId = applicationId

            self.currencyInfo = currencyInfo

            self.meta = meta

            self.shipments = shipments

            self.billingInfo = billingInfo

            self.paymentInfo = paymentInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            charges = try container.decode([Charge].self, forKey: .charges)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

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

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
        }
    }
}
