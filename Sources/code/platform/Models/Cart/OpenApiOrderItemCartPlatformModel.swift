

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var extraMeta: [String: Any]?

        public var priceMarked: Double

        public var cashbackApplied: Double

        public var size: String

        public var employeeDiscount: Double?

        public var productId: Int

        public var quantity: Int?

        public var codCharges: Double

        public var amountPaid: Double

        public var priceEffective: Double

        public var loyaltyDiscount: Double?

        public var files: [OpenApiFiles]?

        public var meta: CartItemMeta?

        public var couponEffectiveDiscount: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var deliveryCharges: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case size

            case employeeDiscount = "employee_discount"

            case productId = "product_id"

            case quantity

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case loyaltyDiscount = "loyalty_discount"

            case files

            case meta

            case couponEffectiveDiscount = "coupon_effective_discount"

            case paymentMethods = "payment_methods"

            case deliveryCharges = "delivery_charges"

            case discount
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.extraMeta = extraMeta

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.employeeDiscount = employeeDiscount

            self.productId = productId

            self.quantity = quantity

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.loyaltyDiscount = loyaltyDiscount

            self.files = files

            self.meta = meta

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.paymentMethods = paymentMethods

            self.deliveryCharges = deliveryCharges

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(Int.self, forKey: .productId)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
