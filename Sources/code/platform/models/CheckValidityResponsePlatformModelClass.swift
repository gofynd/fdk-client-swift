

import Foundation
public extension PlatformClient {
    /*
         Model: CheckValidityResponse
         Used By: Billing
     */

    class CheckValidityResponse: Codable {
        public var isValid: Bool?

        public var discountAmount: Double?

        public enum CodingKeys: String, CodingKey {
            case isValid = "is_valid"

            case discountAmount = "discount_amount"
        }

        public init(discountAmount: Double? = nil, isValid: Bool? = nil) {
            self.isValid = isValid

            self.discountAmount = discountAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountAmount = try container.decode(Double.self, forKey: .discountAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)
        }
    }
}
