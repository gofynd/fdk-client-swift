

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var loyaltyDiscount: Double?

        public var files: [OpenApiFiles]?

        public var discount: Double

        public var productId: Int

        public var deliveryCharges: Double

        public var priceEffective: Double

        public var cashbackApplied: Double

        public var extraMeta: [String: Any]?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var couponEffectiveDiscount: Double

        public var employeeDiscount: Double?

        public var meta: CartItemMeta?

        public var codCharges: Double

        public var size: String

        public var quantity: Int?

        public var priceMarked: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case loyaltyDiscount = "loyalty_discount"

            case files

            case discount

            case productId = "product_id"

            case deliveryCharges = "delivery_charges"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case extraMeta = "extra_meta"

            case paymentMethods = "payment_methods"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case employeeDiscount = "employee_discount"

            case meta

            case codCharges = "cod_charges"

            case size

            case quantity

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.loyaltyDiscount = loyaltyDiscount

            self.files = files

            self.discount = discount

            self.productId = productId

            self.deliveryCharges = deliveryCharges

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.extraMeta = extraMeta

            self.paymentMethods = paymentMethods

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.employeeDiscount = employeeDiscount

            self.meta = meta

            self.codCharges = codCharges

            self.size = size

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid
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
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            productId = try container.decode(Int.self, forKey: .productId)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
