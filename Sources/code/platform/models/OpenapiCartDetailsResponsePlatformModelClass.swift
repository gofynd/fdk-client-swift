

import Foundation
public extension PlatformClient {
    /*
         Model: OpenapiCartDetailsResponse
         Used By: Cart
     */

    class OpenapiCartDetailsResponse: Codable {
        public var items: [CartProductInfo]?

        public var breakupValues: CartBreakup?

        public var isValid: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case breakupValues = "breakup_values"

            case isValid = "is_valid"

            case message
        }

        public init(breakupValues: CartBreakup? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, message: String? = nil) {
            self.items = items

            self.breakupValues = breakupValues

            self.isValid = isValid

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
