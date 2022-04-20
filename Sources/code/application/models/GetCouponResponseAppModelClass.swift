

import Foundation
public extension ApplicationClient {
    /*
         Model: GetCouponResponse
         Used By: Cart
     */
    class GetCouponResponse: Codable {
        public var page: PageCoupon?

        public var availableCouponList: [Coupon]?

        public enum CodingKeys: String, CodingKey {
            case page

            case availableCouponList = "available_coupon_list"
        }

        public init(availableCouponList: [Coupon]? = nil, page: PageCoupon? = nil) {
            self.page = page

            self.availableCouponList = availableCouponList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(PageCoupon.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableCouponList = try container.decode([Coupon].self, forKey: .availableCouponList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(availableCouponList, forKey: .availableCouponList)
        }
    }
}
