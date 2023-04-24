

import Foundation
public extension ApplicationClient {
    /*
         Model: CouponValidity
         Used By: Cart
     */
    class CouponValidity: Codable {
        public var discount: Double?

        public var valid: Bool?

        public var displayMessageEn: String?

        public var title: String?

        public var code: String?

        public var nextValidationRequired: Bool?

        public enum CodingKeys: String, CodingKey {
            case discount

            case valid

            case displayMessageEn = "display_message_en"

            case title

            case code

            case nextValidationRequired = "next_validation_required"
        }

        public init(code: String? = nil, discount: Double? = nil, displayMessageEn: String? = nil, nextValidationRequired: Bool? = nil, title: String? = nil, valid: Bool? = nil) {
            self.discount = discount

            self.valid = valid

            self.displayMessageEn = displayMessageEn

            self.title = title

            self.code = code

            self.nextValidationRequired = nextValidationRequired
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valid = try container.decode(Bool.self, forKey: .valid)

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
                title = try container.decode(String.self, forKey: .title)

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
                nextValidationRequired = try container.decode(Bool.self, forKey: .nextValidationRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valid, forKey: .valid)

            try? container.encode(displayMessageEn, forKey: .displayMessageEn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encode(code, forKey: .code)

            try? container.encode(nextValidationRequired, forKey: .nextValidationRequired)
        }
    }
}
