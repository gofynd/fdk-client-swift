

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: PaymentCouponValidate
         Used By: PosCart
     */
    class PaymentCouponValidate: Codable {
        public var message: String?

        public var couponValidity: CouponValidity?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case couponValidity = "coupon_validity"

            case success
        }

        public init(couponValidity: CouponValidity? = nil, message: String? = nil, success: Bool) {
            self.message = message

            self.couponValidity = couponValidity

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
