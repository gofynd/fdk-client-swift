

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var deliveryCharges: Double

        public var productId: Int

        public var quantity: Int?

        public var loyaltyDiscount: Double?

        public var extraMeta: [String: Any]?

        public var codCharges: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cashbackApplied: Double

        public var couponEffectiveDiscount: Double

        public var amountPaid: Double

        public var files: [OpenApiFiles]?

        public var meta: CartItemMeta?

        public var size: String

        public var discount: Double

        public var priceMarked: Double

        public var employeeDiscount: Double?

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case deliveryCharges = "delivery_charges"

            case productId = "product_id"

            case quantity

            case loyaltyDiscount = "loyalty_discount"

            case extraMeta = "extra_meta"

            case codCharges = "cod_charges"

            case paymentMethods = "payment_methods"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case files

            case meta

            case size

            case discount

            case priceMarked = "price_marked"

            case employeeDiscount = "employee_discount"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.deliveryCharges = deliveryCharges

            self.productId = productId

            self.quantity = quantity

            self.loyaltyDiscount = loyaltyDiscount

            self.extraMeta = extraMeta

            self.codCharges = codCharges

            self.paymentMethods = paymentMethods

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.files = files

            self.meta = meta

            self.size = size

            self.discount = discount

            self.priceMarked = priceMarked

            self.employeeDiscount = employeeDiscount

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            productId = try container.decode(Int.self, forKey: .productId)

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
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

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

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
