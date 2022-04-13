import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UsesRestriction1
         Used By: Cart
     */

    class UsesRestriction1: Codable {
        public var remaining: UsesRemaining1?

        public var maximum: UsesRemaining1?

        public enum CodingKeys: String, CodingKey {
            case remaining

            case maximum
        }

        public init(maximum: UsesRemaining1?, remaining: UsesRemaining1?) {
            self.remaining = remaining

            self.maximum = maximum
        }

        public func duplicate() -> UsesRestriction1 {
            let dict = self.dictionary!
            let copy = UsesRestriction1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                remaining = try container.decode(UsesRemaining1.self, forKey: .remaining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maximum = try container.decode(UsesRemaining1.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remaining, forKey: .remaining)

            try? container.encodeIfPresent(maximum, forKey: .maximum)
        }
    }
}
