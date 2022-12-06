

import Foundation
public extension PlatformClient {
    /*
         Model: Validation
         Used By: Cart
     */

    class Validation: Codable {
        public var anonymous: Bool?

        public var appId: [String]?

        public var userRegisteredAfter: String?

        public enum CodingKeys: String, CodingKey {
            case anonymous

            case appId = "app_id"

            case userRegisteredAfter = "user_registered_after"
        }

        public init(anonymous: Bool? = nil, appId: [String]? = nil, userRegisteredAfter: String? = nil) {
            self.anonymous = anonymous

            self.appId = appId

            self.userRegisteredAfter = userRegisteredAfter
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                anonymous = try container.decode(Bool.self, forKey: .anonymous)

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
                userRegisteredAfter = try container.decode(String.self, forKey: .userRegisteredAfter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(anonymous, forKey: .anonymous)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(userRegisteredAfter, forKey: .userRegisteredAfter)
        }
    }
}
