

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderData
         Used By: Order
     */

    class OrderData: Codable {
        public var prices: Prices?

        public var meta: OrderMeta?

        public var orderDate: String

        public var paymentMethods: [String: PaymentMethod]?

        public var fyndOrderId: String

        public var taxDetails: TaxDetails?

        public enum CodingKeys: String, CodingKey {
            case prices

            case meta

            case orderDate = "order_date"

            case paymentMethods = "payment_methods"

            case fyndOrderId = "fynd_order_id"

            case taxDetails = "tax_details"
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: PaymentMethod]? = nil, prices: Prices? = nil, taxDetails: TaxDetails? = nil) {
            self.prices = prices

            self.meta = meta

            self.orderDate = orderDate

            self.paymentMethods = paymentMethods

            self.fyndOrderId = fyndOrderId

            self.taxDetails = taxDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)

            do {
                paymentMethods = try container.decode([String: PaymentMethod].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderData
         Used By: Order
     */

    class OrderData: Codable {
        public var prices: Prices?

        public var meta: OrderMeta?

        public var orderDate: String

        public var paymentMethods: [String: PaymentMethod]?

        public var fyndOrderId: String

        public var taxDetails: TaxDetails?

        public enum CodingKeys: String, CodingKey {
            case prices

            case meta

            case orderDate = "order_date"

            case paymentMethods = "payment_methods"

            case fyndOrderId = "fynd_order_id"

            case taxDetails = "tax_details"
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: PaymentMethod]? = nil, prices: Prices? = nil, taxDetails: TaxDetails? = nil) {
            self.prices = prices

            self.meta = meta

            self.orderDate = orderDate

            self.paymentMethods = paymentMethods

            self.fyndOrderId = fyndOrderId

            self.taxDetails = taxDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)

            do {
                paymentMethods = try container.decode([String: PaymentMethod].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
        }
    }
}
