

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var couponEffectiveDiscount: Double

        public var deliveryCharges: Double

        public var codCharges: Double

        public var employeeDiscount: Double?

        public var productId: Int

        public var extraMeta: [String: Any]?

        public var loyaltyDiscount: Double?

        public var amountPaid: Double

        public var meta: CartItemMeta?

        public var files: [OpenApiFiles]?

        public var cashbackApplied: Double

        public var quantity: Int?

        public var size: String

        public var discount: Double

        public var priceMarked: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case employeeDiscount = "employee_discount"

            case productId = "product_id"

            case extraMeta = "extra_meta"

            case loyaltyDiscount = "loyalty_discount"

            case amountPaid = "amount_paid"

            case meta

            case files

            case cashbackApplied = "cashback_applied"

            case quantity

            case size

            case discount

            case priceMarked = "price_marked"

            case paymentMethods = "payment_methods"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.employeeDiscount = employeeDiscount

            self.productId = productId

            self.extraMeta = extraMeta

            self.loyaltyDiscount = loyaltyDiscount

            self.amountPaid = amountPaid

            self.meta = meta

            self.files = files

            self.cashbackApplied = cashbackApplied

            self.quantity = quantity

            self.size = size

            self.discount = discount

            self.priceMarked = priceMarked

            self.paymentMethods = paymentMethods

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(Int.self, forKey: .productId)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

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

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

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

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
