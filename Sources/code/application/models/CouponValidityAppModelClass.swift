

import Foundation
public extension ApplicationClient {
    /*
         Model: CouponValidity
         Used By: Cart
     */
    class CouponValidity: Codable {
        public var title: String?

        public var discount: Double?

        public var valid: Bool?

        public var code: String?

        public var nextValidationRequired: Bool?

        public var displayMessageEn: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case discount

            case valid

            case code

            case nextValidationRequired = "next_validation_required"

            case displayMessageEn = "display_message_en"
        }

        public init(code: String? = nil, discount: Double? = nil, displayMessageEn: String? = nil, nextValidationRequired: Bool? = nil, title: String? = nil, valid: Bool? = nil) {
            self.title = title

            self.discount = discount

            self.valid = valid

            self.code = code

            self.nextValidationRequired = nextValidationRequired

            self.displayMessageEn = displayMessageEn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

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

            do {
                valid = try container.decode(Bool.self, forKey: .valid)

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

            do {
                displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(valid, forKey: .valid)

            try? container.encode(code, forKey: .code)

            try? container.encode(nextValidationRequired, forKey: .nextValidationRequired)

            try? container.encode(displayMessageEn, forKey: .displayMessageEn)
        }
    }
}
