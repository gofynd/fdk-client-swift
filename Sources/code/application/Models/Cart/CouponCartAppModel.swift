

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: Coupon
         Used By: Cart
     */
    class Coupon: Codable {
        public var isApplicable: Bool?

        public var couponCode: String?

        public var expiresOn: String?

        public var message: String?

        public var couponType: String?

        public var subTitle: String?

        public var maxDiscountValue: Double?

        public var isBankOffer: Bool?

        public var offerText: String?

        public var isApplied: Bool?

        public var savings: Double?

        public var couponValue: Double?

        public var description: String?

        public var minimumCartValue: Double?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case isApplicable = "is_applicable"

            case couponCode = "coupon_code"

            case expiresOn = "expires_on"

            case message

            case couponType = "coupon_type"

            case subTitle = "sub_title"

            case maxDiscountValue = "max_discount_value"

            case isBankOffer = "is_bank_offer"

            case offerText = "offer_text"

            case isApplied = "is_applied"

            case savings

            case couponValue = "coupon_value"

            case description

            case minimumCartValue = "minimum_cart_value"

            case title
        }

        public init(couponCode: String? = nil, couponType: String? = nil, couponValue: Double? = nil, description: String? = nil, expiresOn: String? = nil, isApplicable: Bool? = nil, isApplied: Bool? = nil, isBankOffer: Bool? = nil, maxDiscountValue: Double? = nil, message: String? = nil, minimumCartValue: Double? = nil, offerText: String? = nil, savings: Double? = nil, subTitle: String? = nil, title: String? = nil) {
            self.isApplicable = isApplicable

            self.couponCode = couponCode

            self.expiresOn = expiresOn

            self.message = message

            self.couponType = couponType

            self.subTitle = subTitle

            self.maxDiscountValue = maxDiscountValue

            self.isBankOffer = isBankOffer

            self.offerText = offerText

            self.isApplied = isApplied

            self.savings = savings

            self.couponValue = couponValue

            self.description = description

            self.minimumCartValue = minimumCartValue

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isApplicable = try container.decode(Bool.self, forKey: .isApplicable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiresOn = try container.decode(String.self, forKey: .expiresOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponType = try container.decode(String.self, forKey: .couponType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subTitle = try container.decode(String.self, forKey: .subTitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isBankOffer = try container.decode(Bool.self, forKey: .isBankOffer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerText = try container.decode(String.self, forKey: .offerText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                savings = try container.decode(Double.self, forKey: .savings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(couponType, forKey: .couponType)

            try? container.encodeIfPresent(subTitle, forKey: .subTitle)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(isBankOffer, forKey: .isBankOffer)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(savings, forKey: .savings)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
