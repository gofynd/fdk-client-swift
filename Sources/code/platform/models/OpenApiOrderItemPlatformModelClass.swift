

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var priceMarked: Double

        public var discount: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cashbackApplied: Double

        public var files: [OpenApiFiles]?

        public var priceEffective: Double

        public var meta: CartItemMeta?

        public var quantity: Int?

        public var couponEffectiveDiscount: Double

        public var loyaltyDiscount: Double?

        public var amountPaid: Double

        public var employeeDiscount: Double?

        public var deliveryCharges: Double

        public var size: String

        public var codCharges: Double

        public var extraMeta: [String: Any]?

        public var productId: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case discount

            case paymentMethods = "payment_methods"

            case cashbackApplied = "cashback_applied"

            case files

            case priceEffective = "price_effective"

            case meta

            case quantity

            case couponEffectiveDiscount = "coupon_effective_discount"

            case loyaltyDiscount = "loyalty_discount"

            case amountPaid = "amount_paid"

            case employeeDiscount = "employee_discount"

            case deliveryCharges = "delivery_charges"

            case size

            case codCharges = "cod_charges"

            case extraMeta = "extra_meta"

            case productId = "product_id"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.priceMarked = priceMarked

            self.discount = discount

            self.paymentMethods = paymentMethods

            self.cashbackApplied = cashbackApplied

            self.files = files

            self.priceEffective = priceEffective

            self.meta = meta

            self.quantity = quantity

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.loyaltyDiscount = loyaltyDiscount

            self.amountPaid = amountPaid

            self.employeeDiscount = employeeDiscount

            self.deliveryCharges = deliveryCharges

            self.size = size

            self.codCharges = codCharges

            self.extraMeta = extraMeta

            self.productId = productId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

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

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            size = try container.decode(String.self, forKey: .size)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(Int.self, forKey: .productId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(productId, forKey: .productId)
        }
    }
}
