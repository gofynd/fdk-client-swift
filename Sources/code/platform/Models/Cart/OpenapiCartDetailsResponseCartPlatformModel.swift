

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenapiCartDetailsResponse
         Used By: Cart
     */

    class OpenapiCartDetailsResponse: Codable {
        public var breakupValues: CartBreakupSchema?

        public var message: String?

        public var isValid: Bool?

        public var items: [CartProductInfo]?

        public enum CodingKeys: String, CodingKey {
            case breakupValues = "breakup_values"

            case message

            case isValid = "is_valid"

            case items
        }

        public init(breakupValues: CartBreakupSchema? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, message: String? = nil) {
            self.breakupValues = breakupValues

            self.message = message

            self.isValid = isValid

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                breakupValues = try container.decode(CartBreakupSchema.self, forKey: .breakupValues)

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
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
