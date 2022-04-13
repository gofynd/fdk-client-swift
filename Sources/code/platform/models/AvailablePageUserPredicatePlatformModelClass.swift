import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AvailablePageUserPredicate
         Used By: Theme
     */

    class AvailablePageUserPredicate: Codable {
        public var authenticated: Bool?

        public var anonymous: Bool?

        public enum CodingKeys: String, CodingKey {
            case authenticated

            case anonymous
        }

        public init(anonymous: Bool?, authenticated: Bool?) {
            self.authenticated = authenticated

            self.anonymous = anonymous
        }

        public func duplicate() -> AvailablePageUserPredicate {
            let dict = self.dictionary!
            let copy = AvailablePageUserPredicate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                authenticated = try container.decode(Bool.self, forKey: .authenticated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymous = try container.decode(Bool.self, forKey: .anonymous)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(authenticated, forKey: .authenticated)

            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
        }
    }
}
