

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var employeeDiscount: Double?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var priceEffective: Double

        public var size: String

        public var cashbackApplied: Double

        public var discount: Double

        public var productId: Int

        public var amountPaid: Double

        public var meta: CartItemMeta?

        public var deliveryCharges: Double

        public var priceMarked: Double

        public var couponEffectiveDiscount: Double

        public var codCharges: Double

        public var files: [OpenApiFiles]?

        public var quantity: Int?

        public var loyaltyDiscount: Double?

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case employeeDiscount = "employee_discount"

            case paymentMethods = "payment_methods"

            case priceEffective = "price_effective"

            case size

            case cashbackApplied = "cashback_applied"

            case discount

            case productId = "product_id"

            case amountPaid = "amount_paid"

            case meta

            case deliveryCharges = "delivery_charges"

            case priceMarked = "price_marked"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case files

            case quantity

            case loyaltyDiscount = "loyalty_discount"

            case extraMeta = "extra_meta"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.employeeDiscount = employeeDiscount

            self.paymentMethods = paymentMethods

            self.priceEffective = priceEffective

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.discount = discount

            self.productId = productId

            self.amountPaid = amountPaid

            self.meta = meta

            self.deliveryCharges = deliveryCharges

            self.priceMarked = priceMarked

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.files = files

            self.quantity = quantity

            self.loyaltyDiscount = loyaltyDiscount

            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            discount = try container.decode(Double.self, forKey: .discount)

            productId = try container.decode(Int.self, forKey: .productId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
