

import Foundation
public extension ApplicationClient {
    /*
         Model: CommentRequest
         Used By: Feedback
     */
    class CommentRequest: Codable {
        public var comment: [String]

        public var entityId: String

        public var entityType: String

        public enum CodingKeys: String, CodingKey {
            case comment

            case entityId = "entity_id"

            case entityType = "entity_type"
        }

        public init(comment: [String], entityId: String, entityType: String) {
            self.comment = comment

            self.entityId = entityId

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            comment = try container.decode([String].self, forKey: .comment)

            entityId = try container.decode(String.self, forKey: .entityId)

            entityType = try container.decode(String.self, forKey: .entityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
