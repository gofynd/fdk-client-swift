

import Foundation
public extension ApplicationClient {
    /*
         Model: PageSchema
         Used By: Content
     */
    class PageSchema: Codable {
        public var id: String?

        public var application: String?

        public var componentIds: [String]?

        public var content: [[String: Any]]?

        public var contentPath: String?

        public var createdBy: CreatedBySchema?

        public var dateMeta: DateMeta?

        public var description: String?

        public var featureImage: Asset?

        public var pageMeta: [[String: Any]]?

        public var schedule: ScheduleSchema?

        public var customJson: [String: Any]?

        public var orientation: String?

        public var platform: String?

        public var published: Bool?

        public var slug: String?

        public var tags: [String]?

        public var title: String?

        public var type: String?

        public var seo: SEO?

        public var visibility: [String: Any]?

        public var archived: Bool?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case application

            case componentIds = "component_ids"

            case content

            case contentPath = "content_path"

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case description

            case featureImage = "feature_image"

            case pageMeta = "page_meta"

            case schedule = "_schedule"

            case customJson = "_custom_json"

            case orientation

            case platform

            case published

            case slug

            case tags

            case title

            case type

            case seo

            case visibility

            case archived
        }

        public init(application: String? = nil, archived: Bool? = nil, componentIds: [String]? = nil, content: [[String: Any]]? = nil, contentPath: String? = nil, createdBy: CreatedBySchema? = nil, dateMeta: DateMeta? = nil, description: String? = nil, featureImage: Asset? = nil, orientation: String? = nil, pageMeta: [[String: Any]]? = nil, platform: String? = nil, published: Bool? = nil, seo: SEO? = nil, slug: String? = nil, tags: [String]? = nil, title: String? = nil, type: String? = nil, visibility: [String: Any]? = nil, customJson: [String: Any]? = nil, id: String? = nil, schedule: ScheduleSchema? = nil) {
            self.id = id

            self.application = application

            self.componentIds = componentIds

            self.content = content

            self.contentPath = contentPath

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.description = description

            self.featureImage = featureImage

            self.pageMeta = pageMeta

            self.schedule = schedule

            self.customJson = customJson

            self.orientation = orientation

            self.platform = platform

            self.published = published

            self.slug = slug

            self.tags = tags

            self.title = title

            self.type = type

            self.seo = seo

            self.visibility = visibility

            self.archived = archived
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
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                componentIds = try container.decode([String].self, forKey: .componentIds)

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
                contentPath = try container.decode(String.self, forKey: .contentPath)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                featureImage = try container.decode(Asset.self, forKey: .featureImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageMeta = try container.decode([[String: Any]].self, forKey: .pageMeta)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                platform = try container.decode(String.self, forKey: .platform)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                title = try container.decode(String.self, forKey: .title)

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
                seo = try container.decode(SEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibility = try container.decode([String: Any].self, forKey: .visibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archived = try container.decode(Bool.self, forKey: .archived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(componentIds, forKey: .componentIds)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(contentPath, forKey: .contentPath)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(featureImage, forKey: .featureImage)

            try? container.encodeIfPresent(pageMeta, forKey: .pageMeta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(visibility, forKey: .visibility)

            try? container.encodeIfPresent(archived, forKey: .archived)
        }
    }
}
