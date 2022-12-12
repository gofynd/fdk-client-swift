

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderAPI
         Used By: OrderManage
     */

    class CreateOrderAPI: Codable {
        public var billingInfo: BillingInfo

        public var shipments: [Shipment]

        public var externalOrderId: String?

        public var externalCreationDate: String?

        public var shippingInfo: ShippingInfo

        public var applicationId: String

        public var charges: [Charge]

        public var taxInfo: TaxInfo?

        public var meta: [String: Any]?

        public var paymentInfo: PaymentInfo

        public var currencyInfo: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case billingInfo = "billing_info"

            case shipments

            case externalOrderId = "external_order_id"

            case externalCreationDate = "external_creation_date"

            case shippingInfo = "shipping_info"

            case applicationId = "application_id"

            case charges

            case taxInfo = "tax_info"

            case meta

            case paymentInfo = "payment_info"

            case currencyInfo = "currency_info"
        }

        public init(applicationId: String, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.billingInfo = billingInfo

            self.shipments = shipments

            self.externalOrderId = externalOrderId

            self.externalCreationDate = externalCreationDate

            self.shippingInfo = shippingInfo

            self.applicationId = applicationId

            self.charges = charges

            self.taxInfo = taxInfo

            self.meta = meta

            self.paymentInfo = paymentInfo

            self.currencyInfo = currencyInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

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

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)

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

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
        }
    }
}
