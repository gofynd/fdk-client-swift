

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var codCharges: Double

        public var quantity: Int?

        public var loyaltyDiscount: Double?

        public var employeeDiscount: Double?

        public var files: [OpenApiFiles]?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cashbackApplied: Double

        public var discount: Double

        public var deliveryCharges: Double

        public var couponEffectiveDiscount: Double

        public var extraMeta: [String: Any]?

        public var size: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var productId: Int

        public var priceMarked: Double

        public var meta: CartItemMeta?

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case quantity

            case loyaltyDiscount = "loyalty_discount"

            case employeeDiscount = "employee_discount"

            case files

            case paymentMethods = "payment_methods"

            case cashbackApplied = "cashback_applied"

            case discount

            case deliveryCharges = "delivery_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case extraMeta = "extra_meta"

            case size

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case productId = "product_id"

            case priceMarked = "price_marked"

            case meta
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.codCharges = codCharges

            self.quantity = quantity

            self.loyaltyDiscount = loyaltyDiscount

            self.employeeDiscount = employeeDiscount

            self.files = files

            self.paymentMethods = paymentMethods

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.extraMeta = extraMeta

            self.size = size

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.productId = productId

            self.priceMarked = priceMarked

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            productId = try container.decode(Int.self, forKey: .productId)

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

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
