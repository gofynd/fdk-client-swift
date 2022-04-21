

import Foundation
public extension ApplicationClient {
    /*
         Model: CheckEligibilityResponse
         Used By: Feedback
     */
    class CheckEligibilityResponse: Codable {
        public var access: Access?

        public enum CodingKeys: String, CodingKey {
            case access
        }

        public init(access: Access? = nil) {
            self.access = access
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                access = try container.decode(Access.self, forKey: .access)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(access, forKey: .access)
        }
    }
}
