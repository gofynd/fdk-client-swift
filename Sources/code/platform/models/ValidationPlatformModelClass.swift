import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Validation
         Used By: Cart
     */

    class Validation: Codable {
        public var userRegisteredAfter: String?

        public var appId: [String]?

        public var anonymous: Bool?

        public enum CodingKeys: String, CodingKey {
            case userRegisteredAfter = "user_registered_after"

            case appId = "app_id"

            case anonymous
        }

        public init(anonymous: Bool? = nil, appId: [String]? = nil, userRegisteredAfter: String? = nil) {
            self.userRegisteredAfter = userRegisteredAfter

            self.appId = appId

            self.anonymous = anonymous
        }

        public func duplicate() -> Validation {
            let dict = self.dictionary!
            let copy = Validation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userRegisteredAfter = try container.decode(String.self, forKey: .userRegisteredAfter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode([String].self, forKey: .appId)

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

            try? container.encode(userRegisteredAfter, forKey: .userRegisteredAfter)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
        }
    }
}
