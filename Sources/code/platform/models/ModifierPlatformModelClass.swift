

import Foundation
public extension PlatformClient {
    /*
         Model: Modifier
         Used By: AuditTrail
     */

    class Modifier: Codable {
        public var userId: String?

        public var asAdministrator: Bool?

        public var userDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case asAdministrator = "as_administrator"

            case userDetails = "user_details"
        }

        public init(asAdministrator: Bool? = nil, userDetails: [String: Any]? = nil, userId: String? = nil) {
            self.userId = userId

            self.asAdministrator = asAdministrator

            self.userDetails = userDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                asAdministrator = try container.decode(Bool.self, forKey: .asAdministrator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userDetails = try container.decode([String: Any].self, forKey: .userDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(asAdministrator, forKey: .asAdministrator)

            try? container.encodeIfPresent(userDetails, forKey: .userDetails)
        }
    }
}
