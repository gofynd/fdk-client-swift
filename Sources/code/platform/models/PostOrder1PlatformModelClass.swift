import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PostOrder1
         Used By: Cart
     */

    class PostOrder1: Codable {
        public var cancellationAllowed: Bool?

        public var returnAllowed: Bool?

        public enum CodingKeys: String, CodingKey {
            case cancellationAllowed = "cancellation_allowed"

            case returnAllowed = "return_allowed"
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            self.cancellationAllowed = cancellationAllowed

            self.returnAllowed = returnAllowed
        }

        public func duplicate() -> PostOrder1 {
            let dict = self.dictionary!
            let copy = PostOrder1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
        }
    }
}
