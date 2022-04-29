

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var meta: CartItemMeta?

        public var extraMeta: [String: Any]?

        public var amountPaid: Double

        public var size: String

        public var deliveryCharges: Double

        public var files: [OpenApiFiles]?

        public var loyaltyDiscount: Double?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var discount: Double

        public var cashbackApplied: Double

        public var employeeDiscount: Double?

        public var priceMarked: Double

        public var codCharges: Double

        public var quantity: Int?

        public var couponEffectiveDiscount: Double

        public var productId: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case meta

            case extraMeta = "extra_meta"

            case amountPaid = "amount_paid"

            case size

            case deliveryCharges = "delivery_charges"

            case files

            case loyaltyDiscount = "loyalty_discount"

            case paymentMethods = "payment_methods"

            case discount

            case cashbackApplied = "cashback_applied"

            case employeeDiscount = "employee_discount"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case quantity

            case couponEffectiveDiscount = "coupon_effective_discount"

            case productId = "product_id"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.meta = meta

            self.extraMeta = extraMeta

            self.amountPaid = amountPaid

            self.size = size

            self.deliveryCharges = deliveryCharges

            self.files = files

            self.loyaltyDiscount = loyaltyDiscount

            self.paymentMethods = paymentMethods

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.employeeDiscount = employeeDiscount

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.quantity = quantity

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.productId = productId

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            discount = try container.decode(Double.self, forKey: .discount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            productId = try container.decode(Int.self, forKey: .productId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
