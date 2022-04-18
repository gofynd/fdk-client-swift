import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentAllowValue
         Used By: Cart
     */

    class PaymentAllowValue: Codable {
        public var max: Int?

        public enum CodingKeys: String, CodingKey {
            case max
        }

        public init(max: Int? = nil) {
            self.max = max
        }

        public func duplicate() -> PaymentAllowValue {
            let dict = self.dictionary!
            let copy = PaymentAllowValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                max = try container.decode(Int.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }
}
