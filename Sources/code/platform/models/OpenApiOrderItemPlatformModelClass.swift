

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var loyaltyDiscount: Double?

        public var extraMeta: [String: Any]?

        public var discount: Double

        public var deliveryCharges: Double

        public var quantity: Int?

        public var employeeDiscount: Double?

        public var amountPaid: Double

        public var priceEffective: Double

        public var priceMarked: Double

        public var codCharges: Double

        public var cashbackApplied: Double

        public var meta: CartItemMeta?

        public var productId: Int

        public var couponEffectiveDiscount: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var size: String

        public var files: [OpenApiFiles]?

        public enum CodingKeys: String, CodingKey {
            case loyaltyDiscount = "loyalty_discount"

            case extraMeta = "extra_meta"

            case discount

            case deliveryCharges = "delivery_charges"

            case quantity

            case employeeDiscount = "employee_discount"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case meta

            case productId = "product_id"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case paymentMethods = "payment_methods"

            case size

            case files
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.loyaltyDiscount = loyaltyDiscount

            self.extraMeta = extraMeta

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.quantity = quantity

            self.employeeDiscount = employeeDiscount

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.meta = meta

            self.productId = productId

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.paymentMethods = paymentMethods

            self.size = size

            self.files = files
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

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

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(Int.self, forKey: .productId)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            size = try container.decode(String.self, forKey: .size)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(files, forKey: .files)
        }
    }
}
