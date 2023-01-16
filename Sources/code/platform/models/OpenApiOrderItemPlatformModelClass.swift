

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var deliveryCharges: Double

        public var files: [OpenApiFiles]?

        public var couponEffectiveDiscount: Double

        public var extraMeta: [String: Any]?

        public var priceEffective: Double

        public var employeeDiscount: Double?

        public var meta: CartItemMeta?

        public var loyaltyDiscount: Double?

        public var amountPaid: Double

        public var priceMarked: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var productId: Int

        public var discount: Double

        public var codCharges: Double

        public var quantity: Int?

        public var cashbackApplied: Double

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharges = "delivery_charges"

            case files

            case couponEffectiveDiscount = "coupon_effective_discount"

            case extraMeta = "extra_meta"

            case priceEffective = "price_effective"

            case employeeDiscount = "employee_discount"

            case meta

            case loyaltyDiscount = "loyalty_discount"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case paymentMethods = "payment_methods"

            case productId = "product_id"

            case discount

            case codCharges = "cod_charges"

            case quantity

            case cashbackApplied = "cashback_applied"

            case size
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.deliveryCharges = deliveryCharges

            self.files = files

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.extraMeta = extraMeta

            self.priceEffective = priceEffective

            self.employeeDiscount = employeeDiscount

            self.meta = meta

            self.loyaltyDiscount = loyaltyDiscount

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.paymentMethods = paymentMethods

            self.productId = productId

            self.discount = discount

            self.codCharges = codCharges

            self.quantity = quantity

            self.cashbackApplied = cashbackApplied

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

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
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            productId = try container.decode(Int.self, forKey: .productId)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
