

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: CouponBreakup
         Used By: PosCart
     */
    class CouponBreakup: Codable {
        public var type: String?

        public var description: String?

        public var message: String?

        public var maxDiscountValue: Double?

        public var code: String?

        public var title: String?

        public var minimumCartValue: Double?

        public var couponType: String?

        public var isApplied: Bool?

        public var couponValue: Double?

        public var uid: String?

        public var subTitle: String?

        public var value: Double?

        public enum CodingKeys: String, CodingKey {
            case type

            case description

            case message

            case maxDiscountValue = "max_discount_value"

            case code

            case title

            case minimumCartValue = "minimum_cart_value"

            case couponType = "coupon_type"

            case isApplied = "is_applied"

            case couponValue = "coupon_value"

            case uid

            case subTitle = "sub_title"

            case value
        }

        public init(code: String? = nil, couponType: String? = nil, couponValue: Double? = nil, description: String? = nil, isApplied: Bool? = nil, maxDiscountValue: Double? = nil, message: String? = nil, minimumCartValue: Double? = nil, subTitle: String? = nil, title: String? = nil, type: String? = nil, uid: String? = nil, value: Double? = nil) {
            self.type = type

            self.description = description

            self.message = message

            self.maxDiscountValue = maxDiscountValue

            self.code = code

            self.title = title

            self.minimumCartValue = minimumCartValue

            self.couponType = couponType

            self.isApplied = isApplied

            self.couponValue = couponValue

            self.uid = uid

            self.subTitle = subTitle

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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
                message = try container.decode(String.self, forKey: .message)

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
                code = try container.decode(String.self, forKey: .code)

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
                minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)

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
                isApplied = try container.decode(Bool.self, forKey: .isApplied)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(title, forKey: .title)

            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)

            try? container.encode(couponType, forKey: .couponType)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(subTitle, forKey: .subTitle)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
