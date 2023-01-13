

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var extraMeta: [String: Any]?

        public var quantity: Int?

        public var productId: Int

        public var priceMarked: Double

        public var couponEffectiveDiscount: Double

        public var amountPaid: Double

        public var meta: CartItemMeta?

        public var loyaltyDiscount: Double?

        public var size: String

        public var deliveryCharges: Double

        public var discount: Double

        public var codCharges: Double

        public var cashbackApplied: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var employeeDiscount: Double?

        public var priceEffective: Double

        public var files: [OpenApiFiles]?

        public enum CodingKeys: String, CodingKey {
            case extraMeta = "extra_meta"

            case quantity

            case productId = "product_id"

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case amountPaid = "amount_paid"

            case meta

            case loyaltyDiscount = "loyalty_discount"

            case size

            case deliveryCharges = "delivery_charges"

            case discount

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case paymentMethods = "payment_methods"

            case employeeDiscount = "employee_discount"

            case priceEffective = "price_effective"

            case files
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.extraMeta = extraMeta

            self.quantity = quantity

            self.productId = productId

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.amountPaid = amountPaid

            self.meta = meta

            self.loyaltyDiscount = loyaltyDiscount

            self.size = size

            self.deliveryCharges = deliveryCharges

            self.discount = discount

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.paymentMethods = paymentMethods

            self.employeeDiscount = employeeDiscount

            self.priceEffective = priceEffective

            self.files = files
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            productId = try container.decode(Int.self, forKey: .productId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

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

            size = try container.decode(String.self, forKey: .size)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(files, forKey: .files)
        }
    }
}
