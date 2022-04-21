

import Foundation
public extension ApplicationClient {
    /*
         Model: AbuseReport
         Used By: Feedback
     */
    class AbuseReport: Codable {
        public var abused: Bool?

        public var dateMeta: DateMeta?

        public var description: String?

        public var entity: Entity?

        public var id: String?

        public var name: String?

        public var state: FeedbackState?

        public var tags: [TagMeta]?

        public enum CodingKeys: String, CodingKey {
            case abused

            case dateMeta = "date_meta"

            case description

            case entity

            case id

            case name

            case state

            case tags
        }

        public init(abused: Bool? = nil, dateMeta: DateMeta? = nil, description: String? = nil, entity: Entity? = nil, id: String? = nil, name: String? = nil, state: FeedbackState? = nil, tags: [TagMeta]? = nil) {
            self.abused = abused

            self.dateMeta = dateMeta

            self.description = description

            self.entity = entity

            self.id = id

            self.name = name

            self.state = state

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                abused = try container.decode(Bool.self, forKey: .abused)

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
                description = try container.decode(String.self, forKey: .description)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(abused, forKey: .abused)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
