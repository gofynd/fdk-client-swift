

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: PaymentCouponValidateSchema
         Used By: Cart
     */
    class PaymentCouponValidateSchema: Codable {
        public var couponValidity: CouponValidity?

        public var message: String?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case couponValidity = "coupon_validity"

            case message

            case success
        }

        public init(couponValidity: CouponValidity? = nil, message: String? = nil, success: Bool) {
            self.couponValidity = couponValidity

            self.message = message

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)

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

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
