

import Foundation
public extension PlatformClient {
    /*
         Model: PostOrder1
         Used By: Cart
     */

    class PostOrder1: Codable {
        public var returnAllowed: Bool?

        public var cancellationAllowed: Bool?

        public var partialCanRet: Bool?

        public enum CodingKeys: String, CodingKey {
            case returnAllowed = "return_allowed"

            case cancellationAllowed = "cancellation_allowed"

            case partialCanRet = "partial_can_ret"
        }

        public init(cancellationAllowed: Bool? = nil, partialCanRet: Bool? = nil, returnAllowed: Bool? = nil) {
            self.returnAllowed = returnAllowed

            self.cancellationAllowed = cancellationAllowed

            self.partialCanRet = partialCanRet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)

            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)

            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)
        }
    }
}
