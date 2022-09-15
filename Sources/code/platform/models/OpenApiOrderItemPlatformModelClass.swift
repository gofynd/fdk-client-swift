

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var quantity: Int?

        public var cashbackApplied: Double

        public var loyaltyDiscount: Double?

        public var employeeDiscount: Double?

        public var files: [OpenApiFiles]?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var priceMarked: Double

        public var deliveryCharges: Double

        public var priceEffective: Double

        public var codCharges: Double

        public var couponEffectiveDiscount: Double

        public var discount: Double

        public var amountPaid: Double

        public var meta: CartItemMeta?

        public var productId: Int

        public var size: String

        public var extraMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case cashbackApplied = "cashback_applied"

            case loyaltyDiscount = "loyalty_discount"

            case employeeDiscount = "employee_discount"

            case files

            case paymentMethods = "payment_methods"

            case priceMarked = "price_marked"

            case deliveryCharges = "delivery_charges"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case discount

            case amountPaid = "amount_paid"

            case meta

            case productId = "product_id"

            case size

            case extraMeta = "extra_meta"
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.quantity = quantity

            self.cashbackApplied = cashbackApplied

            self.loyaltyDiscount = loyaltyDiscount

            self.employeeDiscount = employeeDiscount

            self.files = files

            self.paymentMethods = paymentMethods

            self.priceMarked = priceMarked

            self.deliveryCharges = deliveryCharges

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.discount = discount

            self.amountPaid = amountPaid

            self.meta = meta

            self.productId = productId

            self.size = size

            self.extraMeta = extraMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productId = try container.decode(Int.self, forKey: .productId)

            size = try container.decode(String.self, forKey: .size)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
        }
    }
}
