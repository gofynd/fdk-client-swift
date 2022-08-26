

import Foundation
public extension PlatformClient {
    /*
         Model: BlockUserRequestSchema
         Used By: User
     */

    class BlockUserRequestSchema: Codable {
        public var status: Bool?

        public var userId: [String]?

        public var reason: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case userId = "user_id"

            case reason
        }

        public init(reason: String? = nil, status: Bool? = nil, userId: [String]? = nil) {
            self.status = status

            self.userId = userId

            self.reason = reason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode([String].self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(reason, forKey: .reason)
        }
    }
}
