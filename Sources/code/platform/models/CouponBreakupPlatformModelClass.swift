

import Foundation
public extension PlatformClient {
    /*
         Model: CouponBreakup
         Used By: Cart
     */

    class CouponBreakup: Codable {
        public var type: String?

        public var value: Double?

        public var uid: String?

        public var isApplied: Bool?

        public var message: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case value

            case uid

            case isApplied = "is_applied"

            case message

            case code
        }

        public init(code: String? = nil, isApplied: Bool? = nil, message: String? = nil, type: String? = nil, uid: String? = nil, value: Double? = nil) {
            self.type = type

            self.value = value

            self.uid = uid

            self.isApplied = isApplied

            self.message = message

            self.code = code
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
                value = try container.decode(Double.self, forKey: .value)

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
                message = try container.decode(String.self, forKey: .message)

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

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isApplied, forKey: .isApplied)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
