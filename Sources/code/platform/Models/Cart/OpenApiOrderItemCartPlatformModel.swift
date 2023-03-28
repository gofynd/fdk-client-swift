

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var files: [OpenApiFiles]?

        public var deliveryCharges: Double

        public var discount: Double

        public var loyaltyDiscount: Double?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var amountPaid: Double

        public var quantity: Int?

        public var extraMeta: [String: Any]?

        public var productId: Int

        public var codCharges: Double

        public var employeeDiscount: Double?

        public var couponEffectiveDiscount: Double

        public var size: String

        public var priceEffective: Double

        public var cashbackApplied: Double

        public var priceMarked: Double

        public var meta: CartItemMeta?

        public enum CodingKeys: String, CodingKey {
            case files

            case deliveryCharges = "delivery_charges"

            case discount

            case loyaltyDiscount = "loyalty_discount"

            case paymentMethods = "payment_methods"

            case amountPaid = "amount_paid"

            case quantity

            case extraMeta = "extra_meta"

            case productId = "product_id"

            case codCharges = "cod_charges"

            case employeeDiscount = "employee_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case meta
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.files = files

            self.deliveryCharges = deliveryCharges

            self.discount = discount

            self.loyaltyDiscount = loyaltyDiscount

            self.paymentMethods = paymentMethods

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.extraMeta = extraMeta

            self.productId = productId

            self.codCharges = codCharges

            self.employeeDiscount = employeeDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            productId = try container.decode(Int.self, forKey: .productId)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
