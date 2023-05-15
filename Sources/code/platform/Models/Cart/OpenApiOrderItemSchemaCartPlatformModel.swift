

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItemSchema
         Used By: Cart
     */

    class OpenApiOrderItemSchema: Codable {
        public var cashbackApplied: Double

        public var files: [OpenApiFilesSchema]?

        public var deliveryCharges: Double

        public var couponEffectiveDiscount: Double

        public var loyaltyDiscount: Double?

        public var extraMeta: [String: Any]?

        public var meta: CartItemMeta?

        public var amountPaid: Double

        public var quantity: Int?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var priceMarked: Double

        public var productId: Int

        public var size: String

        public var discount: Double

        public var priceEffective: Double

        public var employeeDiscount: Double?

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case files

            case deliveryCharges = "delivery_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case loyaltyDiscount = "loyalty_discount"

            case extraMeta = "extra_meta"

            case meta

            case amountPaid = "amount_paid"

            case quantity

            case paymentMethods = "payment_methods"

            case priceMarked = "price_marked"

            case productId = "product_id"

            case size

            case discount

            case priceEffective = "price_effective"

            case employeeDiscount = "employee_discount"

            case codCharges = "cod_charges"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFilesSchema]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.cashbackApplied = cashbackApplied

            self.files = files

            self.deliveryCharges = deliveryCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.loyaltyDiscount = loyaltyDiscount

            self.extraMeta = extraMeta

            self.meta = meta

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.paymentMethods = paymentMethods

            self.priceMarked = priceMarked

            self.productId = productId

            self.size = size

            self.discount = discount

            self.priceEffective = priceEffective

            self.employeeDiscount = employeeDiscount

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                files = try container.decode([OpenApiFilesSchema].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            productId = try container.decode(Int.self, forKey: .productId)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
