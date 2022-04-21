

import Foundation
public extension ApplicationClient {
    /*
         Model: Comment
         Used By: Feedback
     */
    class Comment: Codable {
        public var comment: [String]?

        public var dateMeta: DateMeta?

        public var entity: Entity?

        public var id: String?

        public var name: String?

        public var state: FeedbackState?

        public var tags: [TagMeta]?

        public var voteCount: VoteCount?

        public enum CodingKeys: String, CodingKey {
            case comment

            case dateMeta = "date_meta"

            case entity

            case id

            case name

            case state

            case tags

            case voteCount = "vote_count"
        }

        public init(comment: [String]? = nil, dateMeta: DateMeta? = nil, entity: Entity? = nil, id: String? = nil, name: String? = nil, state: FeedbackState? = nil, tags: [TagMeta]? = nil, voteCount: VoteCount? = nil) {
            self.comment = comment

            self.dateMeta = dateMeta

            self.entity = entity

            self.id = id

            self.name = name

            self.state = state

            self.tags = tags

            self.voteCount = voteCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode([String].self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entity = try container.decode(Entity.self, forKey: .entity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(FeedbackState.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([TagMeta].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voteCount = try container.decode(VoteCount.self, forKey: .voteCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(voteCount, forKey: .voteCount)
        }
    }
}
