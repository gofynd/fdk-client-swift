

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var shippingInfo: ShippingInfo

        public var taxInfo: TaxInfo?

        public var externalCreationDate: String?

        public var paymentInfo: PaymentInfo

        public var meta: [String: Any]?

        public var billingInfo: BillingInfo

        public var applicationId: String?

        public var charges: [Charge]

        public var externalOrderId: String?

        public var shipments: [Shipment]

        public var currencyInfo: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case shippingInfo = "shipping_info"

            case taxInfo = "tax_info"

            case externalCreationDate = "external_creation_date"

            case paymentInfo = "payment_info"

            case meta

            case billingInfo = "billing_info"

            case applicationId = "application_id"

            case charges

            case externalOrderId = "external_order_id"

            case shipments

            case currencyInfo = "currency_info"
        }

        public init(applicationId: String? = nil, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.shippingInfo = shippingInfo

            self.taxInfo = taxInfo

            self.externalCreationDate = externalCreationDate

            self.paymentInfo = paymentInfo

            self.meta = meta

            self.billingInfo = billingInfo

            self.applicationId = applicationId

            self.charges = charges

            self.externalOrderId = externalOrderId

            self.shipments = shipments

            self.currencyInfo = currencyInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

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

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var shippingInfo: ShippingInfo

        public var taxInfo: TaxInfo?

        public var externalCreationDate: String?

        public var paymentInfo: PaymentInfo

        public var meta: [String: Any]?

        public var billingInfo: BillingInfo

        public var applicationId: String?

        public var charges: [Charge]

        public var externalOrderId: String?

        public var shipments: [Shipment]

        public var currencyInfo: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case shippingInfo = "shipping_info"

            case taxInfo = "tax_info"

            case externalCreationDate = "external_creation_date"

            case paymentInfo = "payment_info"

            case meta

            case billingInfo = "billing_info"

            case applicationId = "application_id"

            case charges

            case externalOrderId = "external_order_id"

            case shipments

            case currencyInfo = "currency_info"
        }

        public init(applicationId: String? = nil, billingInfo: BillingInfo, charges: [Charge], currencyInfo: [String: Any], externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.shippingInfo = shippingInfo

            self.taxInfo = taxInfo

            self.externalCreationDate = externalCreationDate

            self.paymentInfo = paymentInfo

            self.meta = meta

            self.billingInfo = billingInfo

            self.applicationId = applicationId

            self.charges = charges

            self.externalOrderId = externalOrderId

            self.shipments = shipments

            self.currencyInfo = currencyInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

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

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            charges = try container.decode([Charge].self, forKey: .charges)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
        }
    }
}
