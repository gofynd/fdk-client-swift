

import Foundation
public extension PlatformClient {
    /*
         Model: AdminAnnouncementSchema
         Used By: Content
     */

    class AdminAnnouncementSchema: Codable {
        public var id: String?

        public var platforms: [String]?

        public var title: String?

        public var announcement: String?

        public var pages: [AnnouncementPageSchema]?

        public var editorMeta: EditorMeta?

        public var author: AnnouncementAuthorSchema?

        public var createdAt: String?

        public var app: String?

        public var modifiedAt: String?

        public var schedule: ScheduleSchema?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case platforms

            case title

            case announcement

            case pages

            case editorMeta = "editor_meta"

            case author

            case createdAt = "created_at"

            case app

            case modifiedAt = "modified_at"

            case schedule = "_schedule"
        }

        public init(announcement: String? = nil, app: String? = nil, author: AnnouncementAuthorSchema? = nil, createdAt: String? = nil, editorMeta: EditorMeta? = nil, modifiedAt: String? = nil, pages: [AnnouncementPageSchema]? = nil, platforms: [String]? = nil, title: String? = nil, id: String? = nil, schedule: ScheduleSchema? = nil) {
            self.id = id

            self.platforms = platforms

            self.title = title

            self.announcement = announcement

            self.pages = pages

            self.editorMeta = editorMeta

            self.author = author

            self.createdAt = createdAt

            self.app = app

            self.modifiedAt = modifiedAt

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
                platforms = try container.decode([String].self, forKey: .platforms)

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
                announcement = try container.decode(String.self, forKey: .announcement)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pages = try container.decode([AnnouncementPageSchema].self, forKey: .pages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                editorMeta = try container.decode(EditorMeta.self, forKey: .editorMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(AnnouncementAuthorSchema.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedAt = try container.decode(String.self, forKey: .modifiedAt)

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

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(announcement, forKey: .announcement)

            try? container.encodeIfPresent(pages, forKey: .pages)

            try? container.encodeIfPresent(editorMeta, forKey: .editorMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }
}
