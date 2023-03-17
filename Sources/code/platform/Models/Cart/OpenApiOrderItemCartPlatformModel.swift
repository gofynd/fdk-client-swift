

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var couponEffectiveDiscount: Double

        public var files: [OpenApiFiles]?

        public var codCharges: Double

        public var discount: Double

        public var deliveryCharges: Double

        public var size: String

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var productId: Int

        public var quantity: Int?

        public var priceMarked: Double

        public var meta: CartItemMeta?

        public var priceEffective: Double

        public var amountPaid: Double

        public var employeeDiscount: Double?

        public var cashbackApplied: Double

        public var loyaltyDiscount: Double?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case files

            case codCharges = "cod_charges"

            case discount

            case deliveryCharges = "delivery_charges"

            case size

            case paymentMethods = "payment_methods"

            case productId = "product_id"

            case quantity

            case priceMarked = "price_marked"

            case meta

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case employeeDiscount = "employee_discount"

            case cashbackApplied = "cashback_applied"

            case loyaltyDiscount = "loyalty_discount"

            case extraMeta = "extra_meta"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.files = files

            self.codCharges = codCharges

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.size = size

            self.paymentMethods = paymentMethods

            self.productId = productId

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.meta = meta

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.employeeDiscount = employeeDiscount

            self.cashbackApplied = cashbackApplied

            self.loyaltyDiscount = loyaltyDiscount

            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            size = try container.decode(String.self, forKey: .size)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            productId = try container.decode(Int.self, forKey: .productId)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
