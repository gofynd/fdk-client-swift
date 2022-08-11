

import Foundation
public extension ApplicationClient {
    /*
         Model: QNA
         Used By: Feedback
     */
    class QNA: Codable {
        public var comments: [Comment]?

        public var dateMeta: DateMeta?

        public var entity: Entity?

        public var id: String?

        public var name: String?

        public var question: Question?

        public var state: QNAState?

        public var tag: [String]?

        public var tags: [TagMeta]?

        public enum CodingKeys: String, CodingKey {
            case comments

            case dateMeta = "date_meta"

            case entity

            case id

            case name

            case question

            case state

            case tag

            case tags
        }

        public init(comments: [Comment]? = nil, dateMeta: DateMeta? = nil, entity: Entity? = nil, id: String? = nil, name: String? = nil, question: Question? = nil, state: QNAState? = nil, tag: [String]? = nil, tags: [TagMeta]? = nil) {
            self.comments = comments

            self.dateMeta = dateMeta

            self.entity = entity

            self.id = id

            self.name = name

            self.question = question

            self.state = state

            self.tag = tag

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comments = try container.decode([Comment].self, forKey: .comments)

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
                question = try container.decode(Question.self, forKey: .question)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(QNAState.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comments, forKey: .comments)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
