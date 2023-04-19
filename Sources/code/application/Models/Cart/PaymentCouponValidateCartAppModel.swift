

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: PaymentCouponValidate
         Used By: Cart
     */
    class PaymentCouponValidate: Codable {
        public var message: String?

        public var success: Bool

        public var couponValidity: CouponValidity?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case couponValidity = "coupon_validity"
        }

        public init(couponValidity: CouponValidity? = nil, message: String? = nil, success: Bool) {
            self.message = message

            self.success = success

            self.couponValidity = couponValidity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)
        }
    }
}
