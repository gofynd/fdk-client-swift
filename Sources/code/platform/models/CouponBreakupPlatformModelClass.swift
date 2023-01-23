

import Foundation
public extension PlatformClient {
    /*
         Model: CouponBreakup
         Used By: Cart
     */

    class CouponBreakup: Codable {
        public var value: Double?

        public var couponType: String?

        public var maxDiscountValue: Double?

        public var message: String?

        public var uid: String?

        public var isApplied: Bool?

        public var description: String?

        public var minimumCartValue: Double?

        public var couponValue: Double?

        public var title: String?

        public var type: String?

        public var subTitle: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case couponType = "coupon_type"

            case maxDiscountValue = "max_discount_value"

            case message

            case uid

            case isApplied = "is_applied"

            case description

            case minimumCartValue = "minimum_cart_value"

            case couponValue = "coupon_value"

            case title

            case type

            case subTitle = "sub_title"

            case code
        }

        public init(code: String? = nil, couponType: String? = nil, couponValue: Double? = nil, description: String? = nil, isApplied: Bool? = nil, maxDiscountValue: Double? = nil, message: String? = nil, minimumCartValue: Double? = nil, subTitle: String? = nil, title: String? = nil, type: String? = nil, uid: String? = nil, value: Double? = nil) {
            self.value = value

            self.couponType = couponType

            self.maxDiscountValue = maxDiscountValue

            self.message = message

            self.uid = uid

            self.isApplied = isApplied

            self.description = description

            self.minimumCartValue = minimumCartValue

            self.couponValue = couponValue

            self.title = title

            self.type = type

            self.subTitle = subTitle

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Double.self, forKey: .value)

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
                maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                couponValue = try container.decode(Double.self, forKey: .couponValue)

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
                type = try container.decode(String.self, forKey: .type)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encode(couponType, forKey: .couponType)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(subTitle, forKey: .subTitle)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
