

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var cashbackApplied: Double

        public var codCharges: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var discount: Double

        public var loyaltyDiscount: Double?

        public var couponEffectiveDiscount: Double

        public var productId: Int

        public var files: [OpenApiFiles]?

        public var meta: CartItemMeta?

        public var extraMeta: [String: Any]?

        public var quantity: Int?

        public var employeeDiscount: Double?

        public var size: String

        public var amountPaid: Double

        public var priceEffective: Double

        public var deliveryCharges: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case paymentMethods = "payment_methods"

            case discount

            case loyaltyDiscount = "loyalty_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case productId = "product_id"

            case files

            case meta

            case extraMeta = "extra_meta"

            case quantity

            case employeeDiscount = "employee_discount"

            case size

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case deliveryCharges = "delivery_charges"

            case priceMarked = "price_marked"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.paymentMethods = paymentMethods

            self.discount = discount

            self.loyaltyDiscount = loyaltyDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.productId = productId

            self.files = files

            self.meta = meta

            self.extraMeta = extraMeta

            self.quantity = quantity

            self.employeeDiscount = employeeDiscount

            self.size = size

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.deliveryCharges = deliveryCharges

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            productId = try container.decode(Int.self, forKey: .productId)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            size = try container.decode(String.self, forKey: .size)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
