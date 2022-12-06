

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var paymentMethods: [MultiTenderPaymentMethod]

        public var employeeDiscount: Double?

        public var files: [OpenApiFiles]?

        public var meta: CartItemMeta?

        public var extraMeta: [String: Any]?

        public var priceMarked: Double

        public var amountPaid: Double

        public var priceEffective: Double

        public var discount: Double

        public var deliveryCharges: Double

        public var couponEffectiveDiscount: Double

        public var codCharges: Double

        public var size: String

        public var quantity: Int?

        public var loyaltyDiscount: Double?

        public var cashbackApplied: Double

        public var productId: Int

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case employeeDiscount = "employee_discount"

            case files

            case meta

            case extraMeta = "extra_meta"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case discount

            case deliveryCharges = "delivery_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case size

            case quantity

            case loyaltyDiscount = "loyalty_discount"

            case cashbackApplied = "cashback_applied"

            case productId = "product_id"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.paymentMethods = paymentMethods

            self.employeeDiscount = employeeDiscount

            self.files = files

            self.meta = meta

            self.extraMeta = extraMeta

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.size = size

            self.quantity = quantity

            self.loyaltyDiscount = loyaltyDiscount

            self.cashbackApplied = cashbackApplied

            self.productId = productId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

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

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

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

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            productId = try container.decode(Int.self, forKey: .productId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(productId, forKey: .productId)
        }
    }
}
