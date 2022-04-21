

import Foundation
public extension ApplicationClient {
    /*
         Model: Participant
         Used By: Lead
     */
    class Participant: Codable {
        public var user: UserSchema?

        public var identity: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case identity

            case status
        }

        public init(identity: String? = nil, status: String? = nil, user: UserSchema? = nil) {
            self.user = user

            self.identity = identity

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(UserSchema.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identity = try container.decode(String.self, forKey: .identity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(identity, forKey: .identity)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
