

import Foundation
public extension PlatformClient {
    /*
         Model: CustomPageSchema
         Used By: Content
     */

    class CustomPageSchema: Codable {
        public var id: String?

        public var platform: String?

        public var title: String?

        public var slug: String?

        public var type: String?

        public var orientation: String?

        public var application: String?

        public var description: String?

        public var published: Bool?

        public var tags: [String]?

        public var content: [[String: Any]]?

        public var createdBy: CreatedBySchema?

        public var dateMeta: DateMeta?

        public var schedule: ScheduleSchema?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case platform

            case title

            case slug

            case type

            case orientation

            case application

            case description

            case published

            case tags

            case content

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case schedule = "_schedule"
        }

        public init(application: String? = nil, content: [[String: Any]]? = nil, createdBy: CreatedBySchema? = nil, dateMeta: DateMeta? = nil, description: String? = nil, orientation: String? = nil, platform: String? = nil, published: Bool? = nil, slug: String? = nil, tags: [String]? = nil, title: String? = nil, type: String? = nil, id: String? = nil, schedule: ScheduleSchema? = nil) {
            self.id = id

            self.platform = platform

            self.title = title

            self.slug = slug

            self.type = type

            self.orientation = orientation

            self.application = application

            self.description = description

            self.published = published

            self.tags = tags

            self.content = content

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.schedule = schedule
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                orientation = try container.decode(String.self, forKey: .orientation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

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
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode([[String: Any]].self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)

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
                schedule = try container.decode(ScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }
}
