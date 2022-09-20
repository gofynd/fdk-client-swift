

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateCommentRequest
         Used By: Feedback
     */
    class UpdateCommentRequest: Codable {
        public var active: Bool?

        public var approve: Bool?

        public var comment: [String]

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case active

            case approve

            case comment

            case id
        }

        public init(active: Bool? = nil, approve: Bool? = nil, comment: [String], id: String) {
            self.active = active

            self.approve = approve

            self.comment = comment

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                approve = try container.decode(Bool.self, forKey: .approve)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            comment = try container.decode([String].self, forKey: .comment)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
