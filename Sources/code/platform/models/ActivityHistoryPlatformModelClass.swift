

import Foundation
public extension PlatformClient {
    /*
         Model: ActivityHistory
         Used By: Order
     */

    class ActivityHistory: Codable {
        public var createdat: String?

        public var message: String?

        public var type: String?

        public var user: String?

        public enum CodingKeys: String, CodingKey {
            case createdat

            case message

            case type

            case user
        }

        public init(createdat: String? = nil, message: String? = nil, type: String? = nil, user: String? = nil) {
            self.createdat = createdat

            self.message = message

            self.type = type

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdat = try container.decode(String.self, forKey: .createdat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdat, forKey: .createdat)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
