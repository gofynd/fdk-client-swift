

import Foundation
public extension ApplicationClient {
    /*
         Model: ArchiveUserRequestSchema
         Used By: User
     */
    class ArchiveUserRequestSchema: Codable {
        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"
        }

        public init(userId: String? = nil) {
            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
