

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformUserDetails
         Used By: Order
     */

    class PlatformUserDetails: Codable {
        public var platformUserFirstName: String?

        public var platformUserId: String?

        public var platformUserLastName: String?

        public enum CodingKeys: String, CodingKey {
            case platformUserFirstName = "platform_user_first_name"

            case platformUserId = "platform_user_id"

            case platformUserLastName = "platform_user_last_name"
        }

        public init(platformUserFirstName: String? = nil, platformUserId: String? = nil, platformUserLastName: String? = nil) {
            self.platformUserFirstName = platformUserFirstName

            self.platformUserId = platformUserId

            self.platformUserLastName = platformUserLastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                platformUserFirstName = try container.decode(String.self, forKey: .platformUserFirstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserId = try container.decode(String.self, forKey: .platformUserId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformUserLastName = try container.decode(String.self, forKey: .platformUserLastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platformUserFirstName, forKey: .platformUserFirstName)

            try? container.encodeIfPresent(platformUserId, forKey: .platformUserId)

            try? container.encodeIfPresent(platformUserLastName, forKey: .platformUserLastName)
        }
    }
}
