

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var externalCreationDate: String?

        public var meta: [String: Any]?

        public var externalOrderId: String?

        public var paymentInfo: PaymentInfo

        public var shippingInfo: ShippingInfo

        public var shipments: [Shipment]

        public var currencyInfo: [String: Any]?

        public var billingInfo: BillingInfo

        public var charges: [Charge]?

        public var taxInfo: TaxInfo?

        public enum CodingKeys: String, CodingKey {
            case externalCreationDate = "external_creation_date"

            case meta

            case externalOrderId = "external_order_id"

            case paymentInfo = "payment_info"

            case shippingInfo = "shipping_info"

            case shipments

            case currencyInfo = "currency_info"

            case billingInfo = "billing_info"

            case charges

            case taxInfo = "tax_info"
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.externalCreationDate = externalCreationDate

            self.meta = meta

            self.externalOrderId = externalOrderId

            self.paymentInfo = paymentInfo

            self.shippingInfo = shippingInfo

            self.shipments = shipments

            self.currencyInfo = currencyInfo

            self.billingInfo = billingInfo

            self.charges = charges

            self.taxInfo = taxInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

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

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CreateOrderAPI
         Used By: Order
     */

    class CreateOrderAPI: Codable {
        public var externalCreationDate: String?

        public var meta: [String: Any]?

        public var externalOrderId: String?

        public var paymentInfo: PaymentInfo

        public var shippingInfo: ShippingInfo

        public var shipments: [Shipment]

        public var currencyInfo: [String: Any]?

        public var billingInfo: BillingInfo

        public var charges: [Charge]?

        public var taxInfo: TaxInfo?

        public enum CodingKeys: String, CodingKey {
            case externalCreationDate = "external_creation_date"

            case meta

            case externalOrderId = "external_order_id"

            case paymentInfo = "payment_info"

            case shippingInfo = "shipping_info"

            case shipments

            case currencyInfo = "currency_info"

            case billingInfo = "billing_info"

            case charges

            case taxInfo = "tax_info"
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, currencyInfo: [String: Any]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil) {
            self.externalCreationDate = externalCreationDate

            self.meta = meta

            self.externalOrderId = externalOrderId

            self.paymentInfo = paymentInfo

            self.shippingInfo = shippingInfo

            self.shipments = shipments

            self.currencyInfo = currencyInfo

            self.billingInfo = billingInfo

            self.charges = charges

            self.taxInfo = taxInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)

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

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)

            shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)

            shipments = try container.decode([Shipment].self, forKey: .shipments)

            do {
                currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)

            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)

            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)
        }
    }
}
