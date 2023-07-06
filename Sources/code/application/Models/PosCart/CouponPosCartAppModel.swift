

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: Coupon
         Used By: PosCart
     */
    class Coupon: Codable {
        public var subTitle: String?

        public var couponCode: String?

        public var message: String?

        public var savings: Double?

        public var title: String?

        public var couponType: String?

        public var offerText: String?

        public var isApplicable: Bool?

        public var minimumCartValue: Double?

        public var maxDiscountValue: Double?

        public var expiresOn: String?

        public var isApplied: Bool?

        public var isBankOffer: Bool?

        public var couponValue: Double?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case subTitle = "sub_title"

            case couponCode = "coupon_code"

            case message

            case savings

            case title

            case couponType = "coupon_type"

            case offerText = "offer_text"

            case isApplicable = "is_applicable"

            case minimumCartValue = "minimum_cart_value"

            case maxDiscountValue = "max_discount_value"

            case expiresOn = "expires_on"

            case isApplied = "is_applied"

            case isBankOffer = "is_bank_offer"

            case couponValue = "coupon_value"

            case description
        }

        public init(couponCode: String? = nil, couponType: String? = nil, couponValue: Double? = nil, description: String? = nil, expiresOn: String? = nil, isApplicable: Bool? = nil, isApplied: Bool? = nil, isBankOffer: Bool? = nil, maxDiscountValue: Double? = nil, message: String? = nil, minimumCartValue: Double? = nil, offerText: String? = nil, savings: Double? = nil, subTitle: String? = nil, title: String? = nil) {
            self.subTitle = subTitle

            self.couponCode = couponCode

            self.message = message

            self.savings = savings

            self.title = title

            self.couponType = couponType

            self.offerText = offerText

            self.isApplicable = isApplicable

            self.minimumCartValue = minimumCartValue

            self.maxDiscountValue = maxDiscountValue

            self.expiresOn = expiresOn

            self.isApplied = isApplied

            self.isBankOffer = isBankOffer

            self.couponValue = couponValue

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subTitle = try container.decode(String.self, forKey: .subTitle)

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
                message = try container.decode(String.self, forKey: .message)

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
                title = try container.decode(String.self, forKey: .title)

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
                offerText = try container.decode(String.self, forKey: .offerText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isApplicable = try container.decode(Bool.self, forKey: .isApplicable)

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
                maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)

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
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subTitle, forKey: .subTitle)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(savings, forKey: .savings)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encode(couponType, forKey: .couponType)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(isBankOffer, forKey: .isBankOffer)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(description, forKey: .description)
        }
    }
}
