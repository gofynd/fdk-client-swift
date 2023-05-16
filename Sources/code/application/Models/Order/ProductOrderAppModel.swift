

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Product
         Used By: Order
     */
    class Product: Codable {
        public var bagStatus: ProductStatus?

        public var deliveryDate: String?

        public var canReturn: Bool?

        public var lineNumber: Int?

        public var parentPromoBags: [String: Any]?

        public var docketNumber: String

        public var brand: ProductBrand?

        public var item: Item?

        public var sellerIdentifier: String?

        public var appliedPromos: [AppliedPromos]?

        public var canCancel: Bool?

        public var orderId: String

        public var payment: ShipmentPayment?

        public var quantity: Int?

        public var coupon: Coupon?

        public var returnableDate: String?

        public enum CodingKeys: String, CodingKey {
            case bagStatus = "bag_status"

            case deliveryDate = "delivery_date"

            case canReturn = "can_return"

            case lineNumber = "line_number"

            case parentPromoBags = "parent_promo_bags"

            case docketNumber = "docket_number"

            case brand

            case item

            case sellerIdentifier = "seller_identifier"

            case appliedPromos = "applied_promos"

            case canCancel = "can_cancel"

            case orderId = "order_id"

            case payment

            case quantity

            case coupon

            case returnableDate = "returnable_date"
        }

        public init(appliedPromos: [AppliedPromos]? = nil, bagStatus: ProductStatus? = nil, brand: ProductBrand? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, coupon: Coupon? = nil, deliveryDate: String? = nil, docketNumber: String, item: Item? = nil, lineNumber: Int? = nil, orderId: String, parentPromoBags: [String: Any]? = nil, payment: ShipmentPayment? = nil, quantity: Int? = nil, returnableDate: String? = nil, sellerIdentifier: String? = nil) {
            self.bagStatus = bagStatus

            self.deliveryDate = deliveryDate

            self.canReturn = canReturn

            self.lineNumber = lineNumber

            self.parentPromoBags = parentPromoBags

            self.docketNumber = docketNumber

            self.brand = brand

            self.item = item

            self.sellerIdentifier = sellerIdentifier

            self.appliedPromos = appliedPromos

            self.canCancel = canCancel

            self.orderId = orderId

            self.payment = payment

            self.quantity = quantity

            self.coupon = coupon

            self.returnableDate = returnableDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagStatus = try container.decode(ProductStatus.self, forKey: .bagStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            docketNumber = try container.decode(String.self, forKey: .docketNumber)

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedPromos = try container.decode([AppliedPromos].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                payment = try container.decode(ShipmentPayment.self, forKey: .payment)

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
                coupon = try container.decode(Coupon.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnableDate = try container.decode(String.self, forKey: .returnableDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(docketNumber, forKey: .docketNumber)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)
        }
    }
}
