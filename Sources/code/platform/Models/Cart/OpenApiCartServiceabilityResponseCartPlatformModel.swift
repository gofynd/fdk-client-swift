

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiCartServiceabilityResponse
         Used By: Cart
     */

    class OpenApiCartServiceabilityResponse: Codable {
        public var breakupValues: CartBreakupSchema?

        public var deliveryPromise: ShipmentPromise?

        public var message: String?

        public var items: [CartProductInfo]?

        public var isValid: Bool?

        public enum CodingKeys: String, CodingKey {
            case breakupValues = "breakup_values"

            case deliveryPromise = "delivery_promise"

            case message

            case items

            case isValid = "is_valid"
        }

        public init(breakupValues: CartBreakupSchema? = nil, deliveryPromise: ShipmentPromise? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, message: String? = nil) {
            self.breakupValues = breakupValues

            self.deliveryPromise = deliveryPromise

            self.message = message

            self.items = items

            self.isValid = isValid
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
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

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
                items = try container.decode([CartProductInfo].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(isValid, forKey: .isValid)
        }
    }
}
