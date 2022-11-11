

import Foundation
public extension ApplicationClient {
    /*
         Model: Coupon
         Used By: Cart
     */
    class Coupon: Codable {
        public var isApplicable: Bool?

        public var title: String?

        public var couponValue: Double?

        public var maxDiscountValue: Double?

        public var expiresOn: String?

        public var minimumCartValue: Double?

        public var subTitle: String?

        public var message: String?

        public var isApplied: Bool?

        public var couponCode: String?

        public enum CodingKeys: String, CodingKey {
            case isApplicable = "is_applicable"

            case title

            case couponValue = "coupon_value"

            case maxDiscountValue = "max_discount_value"

            case expiresOn = "expires_on"

            case minimumCartValue = "minimum_cart_value"

            case subTitle = "sub_title"

            case message

            case isApplied = "is_applied"

            case couponCode = "coupon_code"
        }

        public init(couponCode: String? = nil, couponValue: Double? = nil, expiresOn: String? = nil, isApplicable: Bool? = nil, isApplied: Bool? = nil, maxDiscountValue: Double? = nil, message: String? = nil, minimumCartValue: Double? = nil, subTitle: String? = nil, title: String? = nil) {
            self.isApplicable = isApplicable

            self.title = title

            self.couponValue = couponValue

            self.maxDiscountValue = maxDiscountValue

            self.expiresOn = expiresOn

            self.minimumCartValue = minimumCartValue

            self.subTitle = subTitle

            self.message = message

            self.isApplied = isApplied

            self.couponCode = couponCode
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
                title = try container.decode(String.self, forKey: .title)

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
                minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)

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
                message = try container.decode(String.self, forKey: .message)

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
                couponCode = try container.decode(String.self, forKey: .couponCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)

            try? container.encodeIfPresent(subTitle, forKey: .subTitle)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
        }
    }
}
