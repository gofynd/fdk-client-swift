

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var files: [OpenApiFiles]?

        public var meta: CartItemMeta?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var productId: Int

        public var amountPaid: Double

        public var loyaltyDiscount: Double?

        public var cashbackApplied: Double

        public var couponEffectiveDiscount: Double

        public var discount: Double

        public var priceMarked: Double

        public var extraMeta: [String: Any]?

        public var priceEffective: Double

        public var quantity: Int?

        public var employeeDiscount: Double?

        public var codCharges: Double

        public var size: String

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case files

            case meta

            case paymentMethods = "payment_methods"

            case productId = "product_id"

            case amountPaid = "amount_paid"

            case loyaltyDiscount = "loyalty_discount"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case discount

            case priceMarked = "price_marked"

            case extraMeta = "extra_meta"

            case priceEffective = "price_effective"

            case quantity

            case employeeDiscount = "employee_discount"

            case codCharges = "cod_charges"

            case size

            case deliveryCharges = "delivery_charges"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.files = files

            self.meta = meta

            self.paymentMethods = paymentMethods

            self.productId = productId

            self.amountPaid = amountPaid

            self.loyaltyDiscount = loyaltyDiscount

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.discount = discount

            self.priceMarked = priceMarked

            self.extraMeta = extraMeta

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.employeeDiscount = employeeDiscount

            self.codCharges = codCharges

            self.size = size

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            productId = try container.decode(Int.self, forKey: .productId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        }
    }
}
