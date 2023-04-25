

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CouponValidity
         Used By: Cart
     */
    class CouponValidity: Codable {
        public var valid: Bool?

        public var title: String?

        public var displayMessageEn: String?

        public var code: String?

        public var discount: Double?

        public enum CodingKeys: String, CodingKey {
            case valid

            case title

            case displayMessageEn = "display_message_en"

            case code

            case discount
        }

        public init(code: String? = nil, discount: Double? = nil, displayMessageEn: String? = nil, title: String? = nil, valid: Bool? = nil) {
            self.valid = valid

            self.title = title

            self.displayMessageEn = displayMessageEn

            self.code = code

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                valid = try container.decode(Bool.self, forKey: .valid)

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
                displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)

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
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valid, forKey: .valid)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encode(displayMessageEn, forKey: .displayMessageEn)

            try? container.encode(code, forKey: .code)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
