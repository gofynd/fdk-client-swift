import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationLegal
         Used By: Content
     */
    class ApplicationLegal: Codable {
        public var application: String?

        public var tnc: String?

        public var policy: String?

        public var shipping: String?

        public var faq: [ApplicationLegalFAQ]?

        public var id: String?

        public var updatedAt: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case application

            case tnc

            case policy

            case shipping

            case faq

            case id = "_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"
        }

        public init(application: String?, createdAt: String?, faq: [ApplicationLegalFAQ]?, policy: String?, shipping: String?, tnc: String?, updatedAt: String?, id: String?) {
            self.application = application

            self.tnc = tnc

            self.policy = policy

            self.shipping = shipping

            self.faq = faq

            self.id = id

            self.updatedAt = updatedAt

            self.createdAt = createdAt
        }

        public func duplicate() -> ApplicationLegal {
            let dict = self.dictionary!
            let copy = ApplicationLegal(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tnc = try container.decode(String.self, forKey: .tnc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                policy = try container.decode(String.self, forKey: .policy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipping = try container.decode(String.self, forKey: .shipping)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                faq = try container.decode([ApplicationLegalFAQ].self, forKey: .faq)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(tnc, forKey: .tnc)

            try? container.encodeIfPresent(policy, forKey: .policy)

            try? container.encodeIfPresent(shipping, forKey: .shipping)

            try? container.encodeIfPresent(faq, forKey: .faq)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }

    /*
         Model: ApplicationLegalFAQ
         Used By: Content
     */
    class ApplicationLegalFAQ: Codable {
        public var question: String?

        public var answer: String?

        public enum CodingKeys: String, CodingKey {
            case question

            case answer
        }

        public init(answer: String?, question: String?) {
            self.question = question

            self.answer = answer
        }

        public func duplicate() -> ApplicationLegalFAQ {
            let dict = self.dictionary!
            let copy = ApplicationLegalFAQ(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                question = try container.decode(String.self, forKey: .question)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                answer = try container.decode(String.self, forKey: .answer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(answer, forKey: .answer)
        }
    }

    /*
         Model: PathMappingSchema
         Used By: Content
     */
    class PathMappingSchema: Codable {
        public var application: String?

        public var redirections: [RedirectionSchema]?

        public var id: String?

        public var updatedAt: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case application

            case redirections

            case id = "_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"
        }

        public init(application: String?, createdAt: String?, redirections: [RedirectionSchema]?, updatedAt: String?, id: String?) {
            self.application = application

            self.redirections = redirections

            self.id = id

            self.updatedAt = updatedAt

            self.createdAt = createdAt
        }

        public func duplicate() -> PathMappingSchema {
            let dict = self.dictionary!
            let copy = PathMappingSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirections = try container.decode([RedirectionSchema].self, forKey: .redirections)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(redirections, forKey: .redirections)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }

    /*
         Model: RedirectionSchema
         Used By: Content
     */
    class RedirectionSchema: Codable {
        public var redirectFrom: String?

        public var redirectTo: String?

        public enum CodingKeys: String, CodingKey {
            case redirectFrom = "redirect_from"

            case redirectTo = "redirect_to"
        }

        public init(redirectFrom: String?, redirectTo: String?) {
            self.redirectFrom = redirectFrom

            self.redirectTo = redirectTo
        }

        public func duplicate() -> RedirectionSchema {
            let dict = self.dictionary!
            let copy = RedirectionSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectFrom = try container.decode(String.self, forKey: .redirectFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectTo = try container.decode(String.self, forKey: .redirectTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redirectFrom, forKey: .redirectFrom)

            try? container.encodeIfPresent(redirectTo, forKey: .redirectTo)
        }
    }

    /*
         Model: SeoComponent
         Used By: Content
     */
    class SeoComponent: Codable {
        public var seo: SeoSchema?

        public enum CodingKeys: String, CodingKey {
            case seo
        }

        public init(seo: SeoSchema?) {
            self.seo = seo
        }

        public func duplicate() -> SeoComponent {
            let dict = self.dictionary!
            let copy = SeoComponent(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seo = try container.decode(SeoSchema.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(seo, forKey: .seo)
        }
    }

    /*
         Model: SeoSchema
         Used By: Content
     */
    class SeoSchema: Codable {
        public var app: String?

        public var id: String?

        public var robotsTxt: String?

        public var sitemapEnabled: Bool?

        public var customMetaTags: [CustomMetaTag]?

        public var details: Detail?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case app

            case id = "_id"

            case robotsTxt = "robots_txt"

            case sitemapEnabled = "sitemap_enabled"

            case customMetaTags = "custom_meta_tags"

            case details

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(app: String?, createdAt: String?, customMetaTags: [CustomMetaTag]?, details: Detail?, robotsTxt: String?, sitemapEnabled: Bool?, updatedAt: String?, id: String?) {
            self.app = app

            self.id = id

            self.robotsTxt = robotsTxt

            self.sitemapEnabled = sitemapEnabled

            self.customMetaTags = customMetaTags

            self.details = details

            self.createdAt = createdAt

            self.updatedAt = updatedAt
        }

        public func duplicate() -> SeoSchema {
            let dict = self.dictionary!
            let copy = SeoSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(String.self, forKey: .app)

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
                robotsTxt = try container.decode(String.self, forKey: .robotsTxt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sitemapEnabled = try container.decode(Bool.self, forKey: .sitemapEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMetaTags = try container.decode([CustomMetaTag].self, forKey: .customMetaTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode(Detail.self, forKey: .details)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(robotsTxt, forKey: .robotsTxt)

            try? container.encodeIfPresent(sitemapEnabled, forKey: .sitemapEnabled)

            try? container.encodeIfPresent(customMetaTags, forKey: .customMetaTags)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }

    /*
         Model: CustomMetaTag
         Used By: Content
     */
    class CustomMetaTag: Codable {
        public var name: String?

        public var content: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case content

            case id = "_id"
        }

        public init(content: String?, name: String?, id: String?) {
            self.name = name

            self.content = content

            self.id = id
        }

        public func duplicate() -> CustomMetaTag {
            let dict = self.dictionary!
            let copy = CustomMetaTag(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: Detail
         Used By: Content
     */
    class Detail: Codable {
        public var title: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case description
        }

        public init(description: String?, title: String?) {
            self.title = title

            self.description = description
        }

        public func duplicate() -> Detail {
            let dict = self.dictionary!
            let copy = Detail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: AnnouncementPageSchema
         Used By: Content
     */
    class AnnouncementPageSchema: Codable {
        public var pageSlug: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case pageSlug = "page_slug"

            case type
        }

        public init(pageSlug: String?, type: String?) {
            self.pageSlug = pageSlug

            self.type = type
        }

        public func duplicate() -> AnnouncementPageSchema {
            let dict = self.dictionary!
            let copy = AnnouncementPageSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageSlug = try container.decode(String.self, forKey: .pageSlug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSlug, forKey: .pageSlug)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: EditorMeta
         Used By: Content
     */
    class EditorMeta: Codable {
        public var foregroundColor: String?

        public var backgroundColor: String?

        public var contentType: String?

        public var content: String?

        public enum CodingKeys: String, CodingKey {
            case foregroundColor = "foreground_color"

            case backgroundColor = "background_color"

            case contentType = "content_type"

            case content
        }

        public init(backgroundColor: String?, content: String?, contentType: String?, foregroundColor: String?) {
            self.foregroundColor = foregroundColor

            self.backgroundColor = backgroundColor

            self.contentType = contentType

            self.content = content
        }

        public func duplicate() -> EditorMeta {
            let dict = self.dictionary!
            let copy = EditorMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                foregroundColor = try container.decode(String.self, forKey: .foregroundColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                backgroundColor = try container.decode(String.self, forKey: .backgroundColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contentType = try container.decode(String.self, forKey: .contentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(foregroundColor, forKey: .foregroundColor)

            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(content, forKey: .content)
        }
    }

    /*
         Model: AnnouncementAuthorSchema
         Used By: Content
     */
    class AnnouncementAuthorSchema: Codable {
        public var createdBy: String?

        public var modifiedBy: String?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case modifiedBy = "modified_by"
        }

        public init(createdBy: String?, modifiedBy: String?) {
            self.createdBy = createdBy

            self.modifiedBy = modifiedBy
        }

        public func duplicate() -> AnnouncementAuthorSchema {
            let dict = self.dictionary!
            let copy = AnnouncementAuthorSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }

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

        public init(announcement: String?, app: String?, author: AnnouncementAuthorSchema?, createdAt: String?, editorMeta: EditorMeta?, modifiedAt: String?, pages: [AnnouncementPageSchema]?, platforms: [String]?, title: String?, id: String?, schedule: ScheduleSchema?) {
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

        public func duplicate() -> AdminAnnouncementSchema {
            let dict = self.dictionary!
            let copy = AdminAnnouncementSchema(dictionary: dict)!
            return copy
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

    /*
         Model: ScheduleSchema
         Used By: Content
     */
    class ScheduleSchema: Codable {
        public var cron: String?

        public var start: String?

        public var end: String?

        public var duration: Double?

        public var nextSchedule: [NextSchedule]?

        public enum CodingKeys: String, CodingKey {
            case cron

            case start

            case end

            case duration

            case nextSchedule = "next_schedule"
        }

        public init(cron: String?, duration: Double?, end: String?, nextSchedule: [NextSchedule]?, start: String?) {
            self.cron = cron

            self.start = start

            self.end = end

            self.duration = duration

            self.nextSchedule = nextSchedule
        }

        public func duplicate() -> ScheduleSchema {
            let dict = self.dictionary!
            let copy = ScheduleSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Double.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextSchedule = try container.decode([NextSchedule].self, forKey: .nextSchedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
        }
    }

    /*
         Model: NextSchedule
         Used By: Content
     */
    class NextSchedule: Codable {
        public var start: String?

        public var end: String?

        public enum CodingKeys: String, CodingKey {
            case start

            case end
        }

        public init(end: String?, start: String?) {
            self.start = start

            self.end = end
        }

        public func duplicate() -> NextSchedule {
            let dict = self.dictionary!
            let copy = NextSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }

    /*
         Model: AnnouncementSchema
         Used By: Content
     */
    class AnnouncementSchema: Codable {
        public var announcement: String?

        public var schedule: ScheduleStartSchema?

        public enum CodingKeys: String, CodingKey {
            case announcement

            case schedule
        }

        public init(announcement: String?, schedule: ScheduleStartSchema?) {
            self.announcement = announcement

            self.schedule = schedule
        }

        public func duplicate() -> AnnouncementSchema {
            let dict = self.dictionary!
            let copy = AnnouncementSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                announcement = try container.decode(String.self, forKey: .announcement)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(ScheduleStartSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(announcement, forKey: .announcement)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: ScheduleStartSchema
         Used By: Content
     */
    class ScheduleStartSchema: Codable {
        public var start: String?

        public var end: String?

        public enum CodingKeys: String, CodingKey {
            case start

            case end
        }

        public init(end: String?, start: String?) {
            self.start = start

            self.end = end
        }

        public func duplicate() -> ScheduleStartSchema {
            let dict = self.dictionary!
            let copy = ScheduleStartSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }

    /*
         Model: BlogGetResponse
         Used By: Content
     */
    class BlogGetResponse: Codable {
        public var items: [BlogSchema]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [BlogSchema]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> BlogGetResponse {
            let dict = self.dictionary!
            let copy = BlogGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([BlogSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ResourceContent
         Used By: Content
     */
    class ResourceContent: Codable {
        public var type: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case value
        }

        public init(type: String?, value: String?) {
            self.type = type

            self.value = value
        }

        public func duplicate() -> ResourceContent {
            let dict = self.dictionary!
            let copy = ResourceContent(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: Asset
         Used By: Content
     */
    class Asset: Codable {
        public var aspectRatio: String?

        public var id: String?

        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case id

            case secureUrl = "secure_url"
        }

        public init(aspectRatio: String?, id: String?, secureUrl: String?) {
            self.aspectRatio = aspectRatio

            self.id = id

            self.secureUrl = secureUrl
        }

        public func duplicate() -> Asset {
            let dict = self.dictionary!
            let copy = Asset(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

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
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: Author
         Used By: Content
     */
    class Author: Codable {
        public var designation: String?

        public var id: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case designation

            case id

            case name
        }

        public init(designation: String?, id: String?, name: String?) {
            self.designation = designation

            self.id = id

            self.name = name
        }

        public func duplicate() -> Author {
            let dict = self.dictionary!
            let copy = Author(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                designation = try container.decode(String.self, forKey: .designation)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(designation, forKey: .designation)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: BlogSchema
         Used By: Content
     */
    class BlogSchema: Codable {
        public var id: String?

        public var customJson: [String: Any]?

        public var application: String?

        public var archived: Bool?

        public var author: Author?

        public var content: [ResourceContent]?

        public var featureImage: Asset?

        public var published: Bool?

        public var readingTime: String?

        public var slug: String?

        public var tags: [String]?

        public var seo: SEO?

        public var schedule: CronSchedule?

        public var title: String?

        public var dateMeta: DateMeta?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case customJson = "_custom_json"

            case application

            case archived

            case author

            case content

            case featureImage = "feature_image"

            case published

            case readingTime = "reading_time"

            case slug

            case tags

            case seo

            case schedule = "_schedule"

            case title

            case dateMeta = "date_meta"
        }

        public init(application: String?, archived: Bool?, author: Author?, content: [ResourceContent]?, dateMeta: DateMeta?, featureImage: Asset?, published: Bool?, readingTime: String?, seo: SEO?, slug: String?, tags: [String]?, title: String?, customJson: [String: Any]?, id: String?, schedule: CronSchedule?) {
            self.id = id

            self.customJson = customJson

            self.application = application

            self.archived = archived

            self.author = author

            self.content = content

            self.featureImage = featureImage

            self.published = published

            self.readingTime = readingTime

            self.slug = slug

            self.tags = tags

            self.seo = seo

            self.schedule = schedule

            self.title = title

            self.dateMeta = dateMeta
        }

        public func duplicate() -> BlogSchema {
            let dict = self.dictionary!
            let copy = BlogSchema(dictionary: dict)!
            return copy
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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                archived = try container.decode(Bool.self, forKey: .archived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(Author.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode([ResourceContent].self, forKey: .content)

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
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                readingTime = try container.decode(String.self, forKey: .readingTime)

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
                seo = try container.decode(SEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CronSchedule.self, forKey: .schedule)

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
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(archived, forKey: .archived)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(featureImage, forKey: .featureImage)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(readingTime, forKey: .readingTime)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
        }
    }

    /*
         Model: SEO
         Used By: Content
     */
    class SEO: Codable {
        public var description: String?

        public var image: SEOImage?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case description

            case image

            case title
        }

        public init(description: String?, image: SEOImage?, title: String?) {
            self.description = description

            self.image = image

            self.title = title
        }

        public func duplicate() -> SEO {
            let dict = self.dictionary!
            let copy = SEO(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(SEOImage.self, forKey: .image)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: SEOImage
         Used By: Content
     */
    class SEOImage: Codable {
        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case url
        }

        public init(url: String?) {
            self.url = url
        }

        public func duplicate() -> SEOImage {
            let dict = self.dictionary!
            let copy = SEOImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: DateMeta
         Used By: Content
     */
    class DateMeta: Codable {
        public var createdOn: String?

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case modifiedOn = "modified_on"
        }

        public init(createdOn: String?, modifiedOn: String?) {
            self.createdOn = createdOn

            self.modifiedOn = modifiedOn
        }

        public func duplicate() -> DateMeta {
            let dict = self.dictionary!
            let copy = DateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }

    /*
         Model: BlogRequest
         Used By: Content
     */
    class BlogRequest: Codable {
        public var application: String?

        public var customJson: [String: Any]?

        public var author: Author?

        public var content: [ResourceContent]?

        public var featureImage: Asset?

        public var published: Bool?

        public var readingTime: String?

        public var slug: String?

        public var tags: [String]?

        public var title: String?

        public var seo: SEO?

        public var schedule: CronSchedule?

        public enum CodingKeys: String, CodingKey {
            case application

            case customJson = "_custom_json"

            case author

            case content

            case featureImage = "feature_image"

            case published

            case readingTime = "reading_time"

            case slug

            case tags

            case title

            case seo

            case schedule = "_schedule"
        }

        public init(application: String?, author: Author?, content: [ResourceContent]?, featureImage: Asset?, published: Bool?, readingTime: String?, seo: SEO?, slug: String?, tags: [String]?, title: String?, customJson: [String: Any]?, schedule: CronSchedule?) {
            self.application = application

            self.customJson = customJson

            self.author = author

            self.content = content

            self.featureImage = featureImage

            self.published = published

            self.readingTime = readingTime

            self.slug = slug

            self.tags = tags

            self.title = title

            self.seo = seo

            self.schedule = schedule
        }

        public func duplicate() -> BlogRequest {
            let dict = self.dictionary!
            let copy = BlogRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

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
                author = try container.decode(Author.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode([ResourceContent].self, forKey: .content)

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
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                readingTime = try container.decode(String.self, forKey: .readingTime)

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
                seo = try container.decode(SEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CronSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(featureImage, forKey: .featureImage)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(readingTime, forKey: .readingTime)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }

    /*
         Model: GetAnnouncementListSchema
         Used By: Content
     */
    class GetAnnouncementListSchema: Codable {
        public var items: [AdminAnnouncementSchema]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [AdminAnnouncementSchema]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetAnnouncementListSchema {
            let dict = self.dictionary!
            let copy = GetAnnouncementListSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AdminAnnouncementSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CreateAnnouncementSchema
         Used By: Content
     */
    class CreateAnnouncementSchema: Codable {
        public var message: String?

        public var data: AdminAnnouncementSchema?

        public enum CodingKeys: String, CodingKey {
            case message

            case data
        }

        public init(data: AdminAnnouncementSchema?, message: String?) {
            self.message = message

            self.data = data
        }

        public func duplicate() -> CreateAnnouncementSchema {
            let dict = self.dictionary!
            let copy = CreateAnnouncementSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(AdminAnnouncementSchema.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: DataLoaderResponseSchema
         Used By: Content
     */
    class DataLoaderResponseSchema: Codable {
        public var application: String?

        public var company: String?

        public var id: String?

        public var name: String?

        public var service: String?

        public var operationId: String?

        public var type: String?

        public var url: String?

        public var content: String?

        public var source: DataLoaderSourceSchema?

        public enum CodingKeys: String, CodingKey {
            case application

            case company

            case id = "_id"

            case name

            case service

            case operationId = "operation_id"

            case type

            case url

            case content

            case source = "__source"
        }

        public init(application: String?, company: String?, content: String?, name: String?, operationId: String?, service: String?, type: String?, url: String?, id: String?, source: DataLoaderSourceSchema?) {
            self.application = application

            self.company = company

            self.id = id

            self.name = name

            self.service = service

            self.operationId = operationId

            self.type = type

            self.url = url

            self.content = content

            self.source = source
        }

        public func duplicate() -> DataLoaderResponseSchema {
            let dict = self.dictionary!
            let copy = DataLoaderResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(String.self, forKey: .company)

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
                service = try container.decode(String.self, forKey: .service)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationId = try container.decode(String.self, forKey: .operationId)

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
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(service, forKey: .service)

            try? container.encodeIfPresent(operationId, forKey: .operationId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }

    /*
         Model: DataLoaderResetResponseSchema
         Used By: Content
     */
    class DataLoaderResetResponseSchema: Codable {
        public var reset: String?

        public enum CodingKeys: String, CodingKey {
            case reset
        }

        public init(reset: String?) {
            self.reset = reset
        }

        public func duplicate() -> DataLoaderResetResponseSchema {
            let dict = self.dictionary!
            let copy = DataLoaderResetResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reset = try container.decode(String.self, forKey: .reset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reset, forKey: .reset)
        }
    }

    /*
         Model: Navigation
         Used By: Content
     */
    class Navigation: Codable {
        public var name: String?

        public var slug: String?

        public var orientation: String?

        public var createdBy: CreatedBySchema?

        public var dateMeta: DateMeta?

        public var id: String?

        public var position: String?

        public var application: String?

        public var platform: String?

        public var navigation: NavigationReference?

        public enum CodingKeys: String, CodingKey {
            case name

            case slug

            case orientation

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case id = "_id"

            case position

            case application

            case platform

            case navigation
        }

        public init(application: String?, createdBy: CreatedBySchema?, dateMeta: DateMeta?, name: String?, navigation: NavigationReference?, orientation: String?, platform: String?, position: String?, slug: String?, id: String?) {
            self.name = name

            self.slug = slug

            self.orientation = orientation

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.id = id

            self.position = position

            self.application = application

            self.platform = platform

            self.navigation = navigation
        }

        public func duplicate() -> Navigation {
            let dict = self.dictionary!
            let copy = Navigation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                orientation = try container.decode(String.self, forKey: .orientation)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                position = try container.decode(String.self, forKey: .position)

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
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                navigation = try container.decode(NavigationReference.self, forKey: .navigation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(position, forKey: .position)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(navigation, forKey: .navigation)
        }
    }

    /*
         Model: LocaleLanguage
         Used By: Content
     */
    class LocaleLanguage: Codable {
        public var hi: Language?

        public var ar: Language?

        public var enUs: Language?

        public enum CodingKeys: String, CodingKey {
            case hi

            case ar

            case enUs = "en_us"
        }

        public init(ar: Language?, enUs: Language?, hi: Language?) {
            self.hi = hi

            self.ar = ar

            self.enUs = enUs
        }

        public func duplicate() -> LocaleLanguage {
            let dict = self.dictionary!
            let copy = LocaleLanguage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hi = try container.decode(Language.self, forKey: .hi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ar = try container.decode(Language.self, forKey: .ar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enUs = try container.decode(Language.self, forKey: .enUs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hi, forKey: .hi)

            try? container.encodeIfPresent(ar, forKey: .ar)

            try? container.encodeIfPresent(enUs, forKey: .enUs)
        }
    }

    /*
         Model: Language
         Used By: Content
     */
    class Language: Codable {
        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case display
        }

        public init(display: String?) {
            self.display = display
        }

        public func duplicate() -> Language {
            let dict = self.dictionary!
            let copy = Language(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: Action
         Used By: Content
     */
    class Action: Codable {
        public var page: ActionPage?

        public var popup: ActionPage?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case page

            case popup

            case type
        }

        public init(page: ActionPage?, popup: ActionPage?, type: String?) {
            self.page = page

            self.popup = popup

            self.type = type
        }

        public func duplicate() -> Action {
            let dict = self.dictionary!
            let copy = Action(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(ActionPage.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                popup = try container.decode(ActionPage.self, forKey: .popup)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(popup, forKey: .popup)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ActionPage
         Used By: Content
     */
    class ActionPage: Codable {
        public var params: [String: [String]]?

        public var query: [String: [String]]?

        public var url: String?

        public var type: PageType

        public enum CodingKeys: String, CodingKey {
            case params

            case query

            case url

            case type
        }

        public init(params: [String: [String]]?, query: [String: [String]]?, type: PageType, url: String?) {
            self.params = params

            self.query = query

            self.url = url

            self.type = type
        }

        public func duplicate() -> ActionPage {
            let dict = self.dictionary!
            let copy = ActionPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                params = try container.decode([String: [String]].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: [String]].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(PageType.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: NavigationReference
         Used By: Content
     */
    class NavigationReference: Codable {
        public var acl: [String]?

        public var tags: [String]?

        public var localeLanguage: LocaleLanguage?

        public var image: String?

        public var type: String?

        public var action: Action?

        public var active: Bool?

        public var display: String?

        public var sortOrder: Int?

        public var subNavigation: [NavigationReference]?

        public enum CodingKeys: String, CodingKey {
            case acl

            case tags

            case localeLanguage = "_locale_language"

            case image

            case type

            case action

            case active

            case display

            case sortOrder = "sort_order"

            case subNavigation = "sub_navigation"
        }

        public init(acl: [String]?, action: Action?, active: Bool?, display: String?, image: String?, sortOrder: Int?, subNavigation: [NavigationReference]?, tags: [String]?, type: String?, localeLanguage: LocaleLanguage?) {
            self.acl = acl

            self.tags = tags

            self.localeLanguage = localeLanguage

            self.image = image

            self.type = type

            self.action = action

            self.active = active

            self.display = display

            self.sortOrder = sortOrder

            self.subNavigation = subNavigation
        }

        public func duplicate() -> NavigationReference {
            let dict = self.dictionary!
            let copy = NavigationReference(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                acl = try container.decode([String].self, forKey: .acl)

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
                localeLanguage = try container.decode(LocaleLanguage.self, forKey: .localeLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

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
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOrder = try container.decode(Int.self, forKey: .sortOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subNavigation = try container.decode([NavigationReference].self, forKey: .subNavigation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(acl, forKey: .acl)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(sortOrder, forKey: .sortOrder)

            try? container.encodeIfPresent(subNavigation, forKey: .subNavigation)
        }
    }

    /*
         Model: LandingPage
         Used By: Content
     */
    class LandingPage: Codable {
        public var data: LandingPageSchema?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: LandingPageSchema?, success: Bool?) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> LandingPage {
            let dict = self.dictionary!
            let copy = LandingPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(LandingPageSchema.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: ConfigurationSchema
         Used By: Content
     */
    class ConfigurationSchema: Codable {
        public var sleepTime: Int?

        public var startOnLaunch: Bool?

        public var duration: Int?

        public var slideDirection: String?

        public enum CodingKeys: String, CodingKey {
            case sleepTime = "sleep_time"

            case startOnLaunch = "start_on_launch"

            case duration

            case slideDirection = "slide_direction"
        }

        public init(duration: Int?, sleepTime: Int?, slideDirection: String?, startOnLaunch: Bool?) {
            self.sleepTime = sleepTime

            self.startOnLaunch = startOnLaunch

            self.duration = duration

            self.slideDirection = slideDirection
        }

        public func duplicate() -> ConfigurationSchema {
            let dict = self.dictionary!
            let copy = ConfigurationSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sleepTime = try container.decode(Int.self, forKey: .sleepTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startOnLaunch = try container.decode(Bool.self, forKey: .startOnLaunch)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slideDirection = try container.decode(String.self, forKey: .slideDirection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sleepTime, forKey: .sleepTime)

            try? container.encodeIfPresent(startOnLaunch, forKey: .startOnLaunch)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(slideDirection, forKey: .slideDirection)
        }
    }

    /*
         Model: SlideshowMedia
         Used By: Content
     */
    class SlideshowMedia: Codable {
        public var type: String?

        public var url: String?

        public var bgColor: String?

        public var duration: Int?

        public var autoDecideDuration: Bool?

        public var action: Action?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case bgColor = "bg_color"

            case duration

            case autoDecideDuration = "auto_decide_duration"

            case action
        }

        public init(action: Action?, autoDecideDuration: Bool?, bgColor: String?, duration: Int?, type: String?, url: String?) {
            self.type = type

            self.url = url

            self.bgColor = bgColor

            self.duration = duration

            self.autoDecideDuration = autoDecideDuration

            self.action = action
        }

        public func duplicate() -> SlideshowMedia {
            let dict = self.dictionary!
            let copy = SlideshowMedia(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bgColor = try container.decode(String.self, forKey: .bgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoDecideDuration = try container.decode(Bool.self, forKey: .autoDecideDuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(bgColor, forKey: .bgColor)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(autoDecideDuration, forKey: .autoDecideDuration)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }

    /*
         Model: Slideshow
         Used By: Content
     */
    class Slideshow: Codable {
        public var data: SlideshowSchema?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: SlideshowSchema?, success: Bool?) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> Slideshow {
            let dict = self.dictionary!
            let copy = Slideshow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(SlideshowSchema.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: AnnouncementsResponseSchema
         Used By: Content
     */
    class AnnouncementsResponseSchema: Codable {
        public var announcements: [String: [AnnouncementSchema]]?

        public var refreshRate: Int?

        public var refreshPages: [String]?

        public enum CodingKeys: String, CodingKey {
            case announcements

            case refreshRate = "refresh_rate"

            case refreshPages = "refresh_pages"
        }

        public init(announcements: [String: [AnnouncementSchema]]?, refreshPages: [String]?, refreshRate: Int?) {
            self.announcements = announcements

            self.refreshRate = refreshRate

            self.refreshPages = refreshPages
        }

        public func duplicate() -> AnnouncementsResponseSchema {
            let dict = self.dictionary!
            let copy = AnnouncementsResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                announcements = try container.decode([String: [AnnouncementSchema]].self, forKey: .announcements)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refreshRate = try container.decode(Int.self, forKey: .refreshRate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refreshPages = try container.decode([String].self, forKey: .refreshPages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(announcements, forKey: .announcements)

            try? container.encodeIfPresent(refreshRate, forKey: .refreshRate)

            try? container.encodeIfPresent(refreshPages, forKey: .refreshPages)
        }
    }

    /*
         Model: FaqResponseSchema
         Used By: Content
     */
    class FaqResponseSchema: Codable {
        public var faqs: [FaqSchema]?

        public enum CodingKeys: String, CodingKey {
            case faqs
        }

        public init(faqs: [FaqSchema]?) {
            self.faqs = faqs
        }

        public func duplicate() -> FaqResponseSchema {
            let dict = self.dictionary!
            let copy = FaqResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                faqs = try container.decode([FaqSchema].self, forKey: .faqs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(faqs, forKey: .faqs)
        }
    }

    /*
         Model: UpdateHandpickedSchema
         Used By: Content
     */
    class UpdateHandpickedSchema: Codable {
        public var tag: HandpickedTagSchema?

        public enum CodingKeys: String, CodingKey {
            case tag
        }

        public init(tag: HandpickedTagSchema?) {
            self.tag = tag
        }

        public func duplicate() -> UpdateHandpickedSchema {
            let dict = self.dictionary!
            let copy = UpdateHandpickedSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tag = try container.decode(HandpickedTagSchema.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tag, forKey: .tag)
        }
    }

    /*
         Model: HandpickedTagSchema
         Used By: Content
     */
    class HandpickedTagSchema: Codable {
        public var position: String?

        public var attributes: [String: Any]?

        public var name: String?

        public var url: String?

        public var type: String?

        public var subType: String?

        public var content: String?

        public enum CodingKeys: String, CodingKey {
            case position

            case attributes

            case name

            case url

            case type

            case subType = "sub_type"

            case content
        }

        public init(attributes: [String: Any]?, content: String?, name: String?, position: String?, subType: String?, type: String?, url: String?) {
            self.position = position

            self.attributes = attributes

            self.name = name

            self.url = url

            self.type = type

            self.subType = subType

            self.content = content
        }

        public func duplicate() -> HandpickedTagSchema {
            let dict = self.dictionary!
            let copy = HandpickedTagSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                position = try container.decode(String.self, forKey: .position)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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
                url = try container.decode(String.self, forKey: .url)

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
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(position, forKey: .position)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(content, forKey: .content)
        }
    }

    /*
         Model: RemoveHandpickedSchema
         Used By: Content
     */
    class RemoveHandpickedSchema: Codable {
        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case tags
        }

        public init(tags: [String]?) {
            self.tags = tags
        }

        public func duplicate() -> RemoveHandpickedSchema {
            let dict = self.dictionary!
            let copy = RemoveHandpickedSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: CreateTagSchema
         Used By: Content
     */
    class CreateTagSchema: Codable {
        public var name: String?

        public var subType: String?

        public var id: String?

        public var type: String?

        public var url: String?

        public var position: String?

        public var attributes: [String: Any]?

        public var content: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case subType = "sub_type"

            case id = "_id"

            case type

            case url

            case position

            case attributes

            case content
        }

        public init(attributes: [String: Any]?, content: String?, name: String?, position: String?, subType: String?, type: String?, url: String?, id: String?) {
            self.name = name

            self.subType = subType

            self.id = id

            self.type = type

            self.url = url

            self.position = position

            self.attributes = attributes

            self.content = content
        }

        public func duplicate() -> CreateTagSchema {
            let dict = self.dictionary!
            let copy = CreateTagSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subType = try container.decode(String.self, forKey: .subType)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                position = try container.decode(String.self, forKey: .position)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(position, forKey: .position)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(content, forKey: .content)
        }
    }

    /*
         Model: CreateTagRequestSchema
         Used By: Content
     */
    class CreateTagRequestSchema: Codable {
        public var tags: [CreateTagSchema]?

        public enum CodingKeys: String, CodingKey {
            case tags
        }

        public init(tags: [CreateTagSchema]?) {
            self.tags = tags
        }

        public func duplicate() -> CreateTagRequestSchema {
            let dict = self.dictionary!
            let copy = CreateTagRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([CreateTagSchema].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: DataLoaderSchema
         Used By: Content
     */
    class DataLoaderSchema: Codable {
        public var name: String?

        public var service: String?

        public var operationId: String?

        public var type: String?

        public var url: String?

        public var content: String?

        public var source: DataLoaderSourceSchema?

        public enum CodingKeys: String, CodingKey {
            case name

            case service

            case operationId = "operation_id"

            case type

            case url

            case content

            case source = "__source"
        }

        public init(content: String?, name: String?, operationId: String?, service: String?, type: String?, url: String?, source: DataLoaderSourceSchema?) {
            self.name = name

            self.service = service

            self.operationId = operationId

            self.type = type

            self.url = url

            self.content = content

            self.source = source
        }

        public func duplicate() -> DataLoaderSchema {
            let dict = self.dictionary!
            let copy = DataLoaderSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                service = try container.decode(String.self, forKey: .service)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationId = try container.decode(String.self, forKey: .operationId)

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
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(service, forKey: .service)

            try? container.encodeIfPresent(operationId, forKey: .operationId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }

    /*
         Model: DataLoaderSourceSchema
         Used By: Content
     */
    class DataLoaderSourceSchema: Codable {
        public var type: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case id
        }

        public init(id: String?, type: String?) {
            self.type = type

            self.id = id
        }

        public func duplicate() -> DataLoaderSourceSchema {
            let dict = self.dictionary!
            let copy = DataLoaderSourceSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: DataLoadersSchema
         Used By: Content
     */
    class DataLoadersSchema: Codable {
        public var items: [DataLoaderSchema]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [DataLoaderSchema]?) {
            self.items = items
        }

        public func duplicate() -> DataLoadersSchema {
            let dict = self.dictionary!
            let copy = DataLoadersSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([DataLoaderSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: TagDeleteSuccessResponse
         Used By: Content
     */
    class TagDeleteSuccessResponse: Codable {
        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool?) {
            self.success = success
        }

        public func duplicate() -> TagDeleteSuccessResponse {
            let dict = self.dictionary!
            let copy = TagDeleteSuccessResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: ContentAPIError
         Used By: Content
     */
    class ContentAPIError: Codable {
        public var message: String?

        public var status: Double?

        public var code: String?

        public var exception: String?

        public var info: String?

        public var requestId: String?

        public var stackTrace: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case status

            case code

            case exception

            case info

            case requestId = "request_id"

            case stackTrace = "stack_trace"

            case meta
        }

        public init(code: String?, exception: String?, info: String?, message: String?, meta: [String: Any]?, requestId: String?, stackTrace: String?, status: Double?) {
            self.message = message

            self.status = status

            self.code = code

            self.exception = exception

            self.info = info

            self.requestId = requestId

            self.stackTrace = stackTrace

            self.meta = meta
        }

        public func duplicate() -> ContentAPIError {
            let dict = self.dictionary!
            let copy = ContentAPIError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Double.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                info = try container.decode(String.self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: CategorySchema
         Used By: Content
     */
    class CategorySchema: Codable {
        public var index: Int?

        public var title: String?

        public var description: String?

        public var children: [String]?

        public var id: String?

        public var slug: String?

        public var application: String?

        public var iconUrl: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case index

            case title

            case description

            case children

            case id = "_id"

            case slug

            case application

            case iconUrl = "icon_url"

            case customJson = "_custom_json"
        }

        public init(application: String?, children: [String]?, description: String?, iconUrl: String?, index: Int?, slug: String?, title: String?, customJson: [String: Any]?, id: String?) {
            self.index = index

            self.title = title

            self.description = description

            self.children = children

            self.id = id

            self.slug = slug

            self.application = application

            self.iconUrl = iconUrl

            self.customJson = customJson
        }

        public func duplicate() -> CategorySchema {
            let dict = self.dictionary!
            let copy = CategorySchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                index = try container.decode(Int.self, forKey: .index)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                children = try container.decode([String].self, forKey: .children)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                iconUrl = try container.decode(String.self, forKey: .iconUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(children, forKey: .children)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(iconUrl, forKey: .iconUrl)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: ChildrenSchema
         Used By: Content
     */
    class ChildrenSchema: Codable {
        public var question: String?

        public var answer: String?

        public var slug: String?

        public var application: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case question

            case answer

            case slug

            case application

            case id = "_id"
        }

        public init(answer: String?, application: String?, question: String?, slug: String?, id: String?) {
            self.question = question

            self.answer = answer

            self.slug = slug

            self.application = application

            self.id = id
        }

        public func duplicate() -> ChildrenSchema {
            let dict = self.dictionary!
            let copy = ChildrenSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                question = try container.decode(String.self, forKey: .question)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                answer = try container.decode(String.self, forKey: .answer)

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
                application = try container.decode(String.self, forKey: .application)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(answer, forKey: .answer)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: CategoryRequestSchema
         Used By: Content
     */
    class CategoryRequestSchema: Codable {
        public var slug: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case title
        }

        public init(slug: String?, title: String?) {
            self.slug = slug

            self.title = title
        }

        public func duplicate() -> CategoryRequestSchema {
            let dict = self.dictionary!
            let copy = CategoryRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: FAQCategorySchema
         Used By: Content
     */
    class FAQCategorySchema: Codable {
        public var index: Int?

        public var title: String?

        public var description: String?

        public var children: [ChildrenSchema]?

        public var id: String?

        public var slug: String?

        public var application: String?

        public var iconUrl: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case index

            case title

            case description

            case children

            case id = "_id"

            case slug

            case application

            case iconUrl = "icon_url"

            case customJson = "_custom_json"
        }

        public init(application: String?, children: [ChildrenSchema]?, description: String?, iconUrl: String?, index: Int?, slug: String?, title: String?, customJson: [String: Any]?, id: String?) {
            self.index = index

            self.title = title

            self.description = description

            self.children = children

            self.id = id

            self.slug = slug

            self.application = application

            self.iconUrl = iconUrl

            self.customJson = customJson
        }

        public func duplicate() -> FAQCategorySchema {
            let dict = self.dictionary!
            let copy = FAQCategorySchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                index = try container.decode(Int.self, forKey: .index)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                children = try container.decode([ChildrenSchema].self, forKey: .children)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                iconUrl = try container.decode(String.self, forKey: .iconUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(children, forKey: .children)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(iconUrl, forKey: .iconUrl)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: FaqSchema
         Used By: Content
     */
    class FaqSchema: Codable {
        public var slug: String?

        public var application: String?

        public var id: String?

        public var question: String?

        public var answer: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case application

            case id = "_id"

            case question

            case answer
        }

        public init(answer: String?, application: String?, question: String?, slug: String?, id: String?) {
            self.slug = slug

            self.application = application

            self.id = id

            self.question = question

            self.answer = answer
        }

        public func duplicate() -> FaqSchema {
            let dict = self.dictionary!
            let copy = FaqSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                question = try container.decode(String.self, forKey: .question)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                answer = try container.decode(String.self, forKey: .answer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(answer, forKey: .answer)
        }
    }

    /*
         Model: FAQ
         Used By: Content
     */
    class FAQ: Codable {
        public var slug: String?

        public var question: String?

        public var answer: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case question

            case answer
        }

        public init(answer: String?, question: String?, slug: String?) {
            self.slug = slug

            self.question = question

            self.answer = answer
        }

        public func duplicate() -> FAQ {
            let dict = self.dictionary!
            let copy = FAQ(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                question = try container.decode(String.self, forKey: .question)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                answer = try container.decode(String.self, forKey: .answer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(answer, forKey: .answer)
        }
    }

    /*
         Model: CreateFaqResponseSchema
         Used By: Content
     */
    class CreateFaqResponseSchema: Codable {
        public var faq: FaqSchema?

        public enum CodingKeys: String, CodingKey {
            case faq
        }

        public init(faq: FaqSchema?) {
            self.faq = faq
        }

        public func duplicate() -> CreateFaqResponseSchema {
            let dict = self.dictionary!
            let copy = CreateFaqResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                faq = try container.decode(FaqSchema.self, forKey: .faq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(faq, forKey: .faq)
        }
    }

    /*
         Model: CreateFaqSchema
         Used By: Content
     */
    class CreateFaqSchema: Codable {
        public var faq: FAQ?

        public enum CodingKeys: String, CodingKey {
            case faq
        }

        public init(faq: FAQ?) {
            self.faq = faq
        }

        public func duplicate() -> CreateFaqSchema {
            let dict = self.dictionary!
            let copy = CreateFaqSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                faq = try container.decode(FAQ.self, forKey: .faq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(faq, forKey: .faq)
        }
    }

    /*
         Model: GetFaqSchema
         Used By: Content
     */
    class GetFaqSchema: Codable {
        public var faqs: [FaqSchema]?

        public enum CodingKeys: String, CodingKey {
            case faqs
        }

        public init(faqs: [FaqSchema]?) {
            self.faqs = faqs
        }

        public func duplicate() -> GetFaqSchema {
            let dict = self.dictionary!
            let copy = GetFaqSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                faqs = try container.decode([FaqSchema].self, forKey: .faqs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(faqs, forKey: .faqs)
        }
    }

    /*
         Model: UpdateFaqCategoryRequestSchema
         Used By: Content
     */
    class UpdateFaqCategoryRequestSchema: Codable {
        public var category: CategorySchema?

        public enum CodingKeys: String, CodingKey {
            case category
        }

        public init(category: CategorySchema?) {
            self.category = category
        }

        public func duplicate() -> UpdateFaqCategoryRequestSchema {
            let dict = self.dictionary!
            let copy = UpdateFaqCategoryRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(CategorySchema.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }

    /*
         Model: CreateFaqCategoryRequestSchema
         Used By: Content
     */
    class CreateFaqCategoryRequestSchema: Codable {
        public var category: CategoryRequestSchema?

        public enum CodingKeys: String, CodingKey {
            case category
        }

        public init(category: CategoryRequestSchema?) {
            self.category = category
        }

        public func duplicate() -> CreateFaqCategoryRequestSchema {
            let dict = self.dictionary!
            let copy = CreateFaqCategoryRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(CategoryRequestSchema.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }

    /*
         Model: CreateFaqCategorySchema
         Used By: Content
     */
    class CreateFaqCategorySchema: Codable {
        public var category: CategorySchema?

        public enum CodingKeys: String, CodingKey {
            case category
        }

        public init(category: CategorySchema?) {
            self.category = category
        }

        public func duplicate() -> CreateFaqCategorySchema {
            let dict = self.dictionary!
            let copy = CreateFaqCategorySchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(CategorySchema.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }

    /*
         Model: GetFaqCategoriesSchema
         Used By: Content
     */
    class GetFaqCategoriesSchema: Codable {
        public var categories: [CategorySchema]?

        public enum CodingKeys: String, CodingKey {
            case categories
        }

        public init(categories: [CategorySchema]?) {
            self.categories = categories
        }

        public func duplicate() -> GetFaqCategoriesSchema {
            let dict = self.dictionary!
            let copy = GetFaqCategoriesSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categories = try container.decode([CategorySchema].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categories, forKey: .categories)
        }
    }

    /*
         Model: GetFaqCategoryBySlugSchema
         Used By: Content
     */
    class GetFaqCategoryBySlugSchema: Codable {
        public var category: FAQCategorySchema?

        public enum CodingKeys: String, CodingKey {
            case category
        }

        public init(category: FAQCategorySchema?) {
            self.category = category
        }

        public func duplicate() -> GetFaqCategoryBySlugSchema {
            let dict = self.dictionary!
            let copy = GetFaqCategoryBySlugSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(FAQCategorySchema.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }

    /*
         Model: LandingPageGetResponse
         Used By: Content
     */
    class LandingPageGetResponse: Codable {
        public var items: [LandingPageSchema]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [LandingPageSchema]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> LandingPageGetResponse {
            let dict = self.dictionary!
            let copy = LandingPageGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([LandingPageSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: LandingPageSchema
         Used By: Content
     */
    class LandingPageSchema: Codable {
        public var slug: String?

        public var action: Action?

        public var platform: [String]?

        public var createdBy: CreatedBySchema?

        public var dateMeta: DateMeta?

        public var id: String?

        public var application: String?

        public var archived: Bool?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case slug

            case action

            case platform

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case id = "_id"

            case application

            case archived

            case customJson = "_custom_json"
        }

        public init(action: Action?, application: String?, archived: Bool?, createdBy: CreatedBySchema?, dateMeta: DateMeta?, platform: [String]?, slug: String?, customJson: [String: Any]?, id: String?) {
            self.slug = slug

            self.action = action

            self.platform = platform

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.id = id

            self.application = application

            self.archived = archived

            self.customJson = customJson
        }

        public func duplicate() -> LandingPageSchema {
            let dict = self.dictionary!
            let copy = LandingPageSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode([String].self, forKey: .platform)

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
                archived = try container.decode(Bool.self, forKey: .archived)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(archived, forKey: .archived)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: DefaultNavigationResponse
         Used By: Content
     */
    class DefaultNavigationResponse: Codable {
        public var items: [NavigationSchema]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [NavigationSchema]?) {
            self.items = items
        }

        public func duplicate() -> DefaultNavigationResponse {
            let dict = self.dictionary!
            let copy = DefaultNavigationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([NavigationSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: NavigationGetResponse
         Used By: Content
     */
    class NavigationGetResponse: Codable {
        public var items: [NavigationSchema]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [NavigationSchema]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> NavigationGetResponse {
            let dict = self.dictionary!
            let copy = NavigationGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([NavigationSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Orientation
         Used By: Content
     */
    class Orientation: Codable {
        public var portrait: [String]?

        public var landscape: [String]?

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: [String]?, portrait: [String]?) {
            self.portrait = portrait

            self.landscape = landscape
        }

        public func duplicate() -> Orientation {
            let dict = self.dictionary!
            let copy = Orientation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                portrait = try container.decode([String].self, forKey: .portrait)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landscape = try container.decode([String].self, forKey: .landscape)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }

    /*
         Model: NavigationSchema
         Used By: Content
     */
    class NavigationSchema: Codable {
        public var id: String?

        public var application: String?

        public var archived: Bool?

        public var name: String?

        public var slug: String?

        public var platform: [String]?

        public var createdBy: CreatedBySchema?

        public var dateMeta: DateMeta?

        public var orientation: Orientation?

        public var version: Double?

        public var navigation: [NavigationReference]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case application

            case archived

            case name

            case slug

            case platform

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case orientation

            case version

            case navigation
        }

        public init(application: String?, archived: Bool?, createdBy: CreatedBySchema?, dateMeta: DateMeta?, name: String?, navigation: [NavigationReference]?, orientation: Orientation?, platform: [String]?, slug: String?, version: Double?, id: String?) {
            self.id = id

            self.application = application

            self.archived = archived

            self.name = name

            self.slug = slug

            self.platform = platform

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.orientation = orientation

            self.version = version

            self.navigation = navigation
        }

        public func duplicate() -> NavigationSchema {
            let dict = self.dictionary!
            let copy = NavigationSchema(dictionary: dict)!
            return copy
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
                archived = try container.decode(Bool.self, forKey: .archived)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode([String].self, forKey: .platform)

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
                orientation = try container.decode(Orientation.self, forKey: .orientation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(Double.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                navigation = try container.decode([NavigationReference].self, forKey: .navigation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(archived, forKey: .archived)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(navigation, forKey: .navigation)
        }
    }

    /*
         Model: NavigationRequest
         Used By: Content
     */
    class NavigationRequest: Codable {
        public var name: String?

        public var slug: String?

        public var platform: [String]?

        public var orientation: Orientation?

        public var navigation: [NavigationReference]?

        public enum CodingKeys: String, CodingKey {
            case name

            case slug

            case platform

            case orientation

            case navigation
        }

        public init(name: String?, navigation: [NavigationReference]?, orientation: Orientation?, platform: [String]?, slug: String?) {
            self.name = name

            self.slug = slug

            self.platform = platform

            self.orientation = orientation

            self.navigation = navigation
        }

        public func duplicate() -> NavigationRequest {
            let dict = self.dictionary!
            let copy = NavigationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                platform = try container.decode([String].self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orientation = try container.decode(Orientation.self, forKey: .orientation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                navigation = try container.decode([NavigationReference].self, forKey: .navigation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(navigation, forKey: .navigation)
        }
    }

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

        public init(application: String?, content: [[String: Any]]?, createdBy: CreatedBySchema?, dateMeta: DateMeta?, description: String?, orientation: String?, platform: String?, published: Bool?, slug: String?, tags: [String]?, title: String?, type: String?, id: String?, schedule: ScheduleSchema?) {
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

        public func duplicate() -> CustomPageSchema {
            let dict = self.dictionary!
            let copy = CustomPageSchema(dictionary: dict)!
            return copy
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

    /*
         Model: ContentSchema
         Used By: Content
     */
    class ContentSchema: Codable {
        public var type: String?

        public var value: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case type

            case value
        }

        public init(type: String?, value: [String: Any]?) {
            self.type = type

            self.value = value
        }

        public func duplicate() -> ContentSchema {
            let dict = self.dictionary!
            let copy = ContentSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: CustomPage
         Used By: Content
     */
    class CustomPage: Codable {
        public var data: CustomPageSchema?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: CustomPageSchema?) {
            self.data = data
        }

        public func duplicate() -> CustomPage {
            let dict = self.dictionary!
            let copy = CustomPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(CustomPageSchema.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: FeatureImage
         Used By: Content
     */
    class FeatureImage: Codable {
        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"
        }

        public init(secureUrl: String?) {
            self.secureUrl = secureUrl
        }

        public func duplicate() -> FeatureImage {
            let dict = self.dictionary!
            let copy = FeatureImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: PageGetResponse
         Used By: Content
     */
    class PageGetResponse: Codable {
        public var items: [PageSchema]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [PageSchema]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> PageGetResponse {
            let dict = self.dictionary!
            let copy = PageGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([PageSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: PageSpec
         Used By: Content
     */
    class PageSpec: Codable {
        public var specifications: [PageSpecItem]?

        public enum CodingKeys: String, CodingKey {
            case specifications
        }

        public init(specifications: [PageSpecItem]?) {
            self.specifications = specifications
        }

        public func duplicate() -> PageSpec {
            let dict = self.dictionary!
            let copy = PageSpec(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                specifications = try container.decode([PageSpecItem].self, forKey: .specifications)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(specifications, forKey: .specifications)
        }
    }

    /*
         Model: PageSpecParam
         Used By: Content
     */
    class PageSpecParam: Codable {
        public var key: String?

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case key

            case required
        }

        public init(key: String?, required: Bool?) {
            self.key = key

            self.required = required
        }

        public func duplicate() -> PageSpecParam {
            let dict = self.dictionary!
            let copy = PageSpecParam(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(required, forKey: .required)
        }
    }

    /*
         Model: PageSpecItem
         Used By: Content
     */
    class PageSpecItem: Codable {
        public var pageType: String?

        public var displayName: String?

        public var params: [PageSpecParam]?

        public var query: [PageSpecParam]?

        public enum CodingKeys: String, CodingKey {
            case pageType = "page_type"

            case displayName = "display_name"

            case params

            case query
        }

        public init(displayName: String?, pageType: String?, params: [PageSpecParam]?, query: [PageSpecParam]?) {
            self.pageType = pageType

            self.displayName = displayName

            self.params = params

            self.query = query
        }

        public func duplicate() -> PageSpecItem {
            let dict = self.dictionary!
            let copy = PageSpecItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageType = try container.decode(String.self, forKey: .pageType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                params = try container.decode([PageSpecParam].self, forKey: .params)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([PageSpecParam].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(params, forKey: .params)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }

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

        public init(application: String?, archived: Bool?, componentIds: [String]?, content: [[String: Any]]?, contentPath: String?, createdBy: CreatedBySchema?, dateMeta: DateMeta?, description: String?, featureImage: Asset?, orientation: String?, pageMeta: [[String: Any]]?, platform: String?, published: Bool?, seo: SEO?, slug: String?, tags: [String]?, title: String?, type: String?, visibility: [String: Any]?, customJson: [String: Any]?, id: String?, schedule: ScheduleSchema?) {
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

        public func duplicate() -> PageSchema {
            let dict = self.dictionary!
            let copy = PageSchema(dictionary: dict)!
            return copy
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

    /*
         Model: CreatedBySchema
         Used By: Content
     */
    class CreatedBySchema: Codable {
        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case id
        }

        public init(id: String?) {
            self.id = id
        }

        public func duplicate() -> CreatedBySchema {
            let dict = self.dictionary!
            let copy = CreatedBySchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: PageContent
         Used By: Content
     */
    class PageContent: Codable {
        public var type: String?

        public var value: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case type

            case value
        }

        public init(type: String?, value: [String: Any]?) {
            self.type = type

            self.value = value
        }

        public func duplicate() -> PageContent {
            let dict = self.dictionary!
            let copy = PageContent(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: PageMeta
         Used By: Content
     */
    class PageMeta: Codable {
        public var key: String?

        public var value: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case key

            case value
        }

        public init(key: String?, value: [String: Any]?) {
            self.key = key

            self.value = value
        }

        public func duplicate() -> PageMeta {
            let dict = self.dictionary!
            let copy = PageMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: PageRequest
         Used By: Content
     */
    class PageRequest: Codable {
        public var schedule: CronSchedule?

        public var application: String?

        public var author: Author?

        public var customJson: [String: Any]?

        public var orientation: String?

        public var content: [[String: Any]]?

        public var featureImage: Asset?

        public var published: Bool?

        public var readingTime: String?

        public var slug: String?

        public var tags: [String]?

        public var seo: SEO?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case application

            case author

            case customJson = "_custom_json"

            case orientation

            case content

            case featureImage = "feature_image"

            case published

            case readingTime = "reading_time"

            case slug

            case tags

            case seo

            case title
        }

        public init(application: String?, author: Author?, content: [[String: Any]]?, featureImage: Asset?, orientation: String?, published: Bool?, readingTime: String?, seo: SEO?, slug: String?, tags: [String]?, title: String?, customJson: [String: Any]?, schedule: CronSchedule?) {
            self.schedule = schedule

            self.application = application

            self.author = author

            self.customJson = customJson

            self.orientation = orientation

            self.content = content

            self.featureImage = featureImage

            self.published = published

            self.readingTime = readingTime

            self.slug = slug

            self.tags = tags

            self.seo = seo

            self.title = title
        }

        public func duplicate() -> PageRequest {
            let dict = self.dictionary!
            let copy = PageRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(CronSchedule.self, forKey: .schedule)

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
                author = try container.decode(Author.self, forKey: .author)

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
                content = try container.decode([[String: Any]].self, forKey: .content)

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
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                readingTime = try container.decode(String.self, forKey: .readingTime)

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
                seo = try container.decode(SEO.self, forKey: .seo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(featureImage, forKey: .featureImage)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(readingTime, forKey: .readingTime)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }

    /*
         Model: CronSchedule
         Used By: Content
     */
    class CronSchedule: Codable {
        public var cron: String?

        public var start: String?

        public var end: String?

        public var duration: Double?

        public enum CodingKeys: String, CodingKey {
            case cron

            case start

            case end

            case duration
        }

        public init(cron: String?, duration: Double?, end: String?, start: String?) {
            self.cron = cron

            self.start = start

            self.end = end

            self.duration = duration
        }

        public func duplicate() -> CronSchedule {
            let dict = self.dictionary!
            let copy = CronSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Double.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(duration, forKey: .duration)
        }
    }

    /*
         Model: PagePublishRequest
         Used By: Content
     */
    class PagePublishRequest: Codable {
        public var publish: Bool?

        public enum CodingKeys: String, CodingKey {
            case publish
        }

        public init(publish: Bool?) {
            self.publish = publish
        }

        public func duplicate() -> PagePublishRequest {
            let dict = self.dictionary!
            let copy = PagePublishRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                publish = try container.decode(Bool.self, forKey: .publish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(publish, forKey: .publish)
        }
    }

    /*
         Model: PageMetaSchema
         Used By: Content
     */
    class PageMetaSchema: Codable {
        public var systemPages: [NavigationSchema]?

        public var customPages: [PageSchema]?

        public var applicationId: String?

        public enum CodingKeys: String, CodingKey {
            case systemPages = "system_pages"

            case customPages = "custom_pages"

            case applicationId = "application_id"
        }

        public init(applicationId: String?, customPages: [PageSchema]?, systemPages: [NavigationSchema]?) {
            self.systemPages = systemPages

            self.customPages = customPages

            self.applicationId = applicationId
        }

        public func duplicate() -> PageMetaSchema {
            let dict = self.dictionary!
            let copy = PageMetaSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                systemPages = try container.decode([NavigationSchema].self, forKey: .systemPages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customPages = try container.decode([PageSchema].self, forKey: .customPages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(systemPages, forKey: .systemPages)

            try? container.encodeIfPresent(customPages, forKey: .customPages)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }

    /*
         Model: SlideshowGetResponse
         Used By: Content
     */
    class SlideshowGetResponse: Codable {
        public var items: [SlideshowSchema]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [SlideshowSchema]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> SlideshowGetResponse {
            let dict = self.dictionary!
            let copy = SlideshowGetResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([SlideshowSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: SlideshowSchema
         Used By: Content
     */
    class SlideshowSchema: Codable {
        public var id: String?

        public var slug: String?

        public var dateMeta: DateMeta?

        public var application: String?

        public var platform: String?

        public var configuration: ConfigurationSchema?

        public var media: [SlideshowMedia]?

        public var active: Bool?

        public var archived: Bool?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case slug

            case dateMeta = "date_meta"

            case application

            case platform

            case configuration

            case media

            case active

            case archived

            case customJson = "_custom_json"
        }

        public init(active: Bool?, application: String?, archived: Bool?, configuration: ConfigurationSchema?, dateMeta: DateMeta?, media: [SlideshowMedia]?, platform: String?, slug: String?, customJson: [String: Any]?, id: String?) {
            self.id = id

            self.slug = slug

            self.dateMeta = dateMeta

            self.application = application

            self.platform = platform

            self.configuration = configuration

            self.media = media

            self.active = active

            self.archived = archived

            self.customJson = customJson
        }

        public func duplicate() -> SlideshowSchema {
            let dict = self.dictionary!
            let copy = SlideshowSchema(dictionary: dict)!
            return copy
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
                slug = try container.decode(String.self, forKey: .slug)

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
                application = try container.decode(String.self, forKey: .application)

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
                configuration = try container.decode(ConfigurationSchema.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([SlideshowMedia].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(archived, forKey: .archived)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }

    /*
         Model: SlideshowRequest
         Used By: Content
     */
    class SlideshowRequest: Codable {
        public var slug: String?

        public var platform: String?

        public var configuration: ConfigurationSchema?

        public var media: SlideshowMedia?

        public var active: Bool?

        public enum CodingKeys: String, CodingKey {
            case slug

            case platform

            case configuration

            case media

            case active
        }

        public init(active: Bool?, configuration: ConfigurationSchema?, media: SlideshowMedia?, platform: String?, slug: String?) {
            self.slug = slug

            self.platform = platform

            self.configuration = configuration

            self.media = media

            self.active = active
        }

        public func duplicate() -> SlideshowRequest {
            let dict = self.dictionary!
            let copy = SlideshowRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                configuration = try container.decode(ConfigurationSchema.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode(SlideshowMedia.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(active, forKey: .active)
        }
    }

    /*
         Model: Support
         Used By: Content
     */
    class Support: Codable {
        public var created: Bool?

        public var id: String?

        public var configType: String?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var contact: ContactSchema?

        public enum CodingKeys: String, CodingKey {
            case created

            case id = "_id"

            case configType = "config_type"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case contact
        }

        public init(application: String?, configType: String?, contact: ContactSchema?, created: Bool?, createdAt: String?, updatedAt: String?, id: String?) {
            self.created = created

            self.id = id

            self.configType = configType

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.contact = contact
        }

        public func duplicate() -> Support {
            let dict = self.dictionary!
            let copy = Support(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                created = try container.decode(Bool.self, forKey: .created)

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
                configType = try container.decode(String.self, forKey: .configType)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(ContactSchema.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }

    /*
         Model: PhoneProperties
         Used By: Content
     */
    class PhoneProperties: Codable {
        public var key: String?

        public var code: String?

        public var number: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case code

            case number
        }

        public init(code: String?, key: String?, number: String?) {
            self.key = key

            self.code = code

            self.number = number
        }

        public func duplicate() -> PhoneProperties {
            let dict = self.dictionary!
            let copy = PhoneProperties(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                number = try container.decode(String.self, forKey: .number)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(number, forKey: .number)
        }
    }

    /*
         Model: PhoneSchema
         Used By: Content
     */
    class PhoneSchema: Codable {
        public var active: Bool?

        public var phone: [PhoneProperties]?

        public enum CodingKeys: String, CodingKey {
            case active

            case phone
        }

        public init(active: Bool?, phone: [PhoneProperties]?) {
            self.active = active

            self.phone = phone
        }

        public func duplicate() -> PhoneSchema {
            let dict = self.dictionary!
            let copy = PhoneSchema(dictionary: dict)!
            return copy
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
                phone = try container.decode([PhoneProperties].self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }

    /*
         Model: EmailProperties
         Used By: Content
     */
    class EmailProperties: Codable {
        public var key: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case value
        }

        public init(key: String?, value: String?) {
            self.key = key

            self.value = value
        }

        public func duplicate() -> EmailProperties {
            let dict = self.dictionary!
            let copy = EmailProperties(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: EmailSchema
         Used By: Content
     */
    class EmailSchema: Codable {
        public var active: Bool?

        public var email: [EmailProperties]?

        public enum CodingKeys: String, CodingKey {
            case active

            case email
        }

        public init(active: Bool?, email: [EmailProperties]?) {
            self.active = active

            self.email = email
        }

        public func duplicate() -> EmailSchema {
            let dict = self.dictionary!
            let copy = EmailSchema(dictionary: dict)!
            return copy
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
                email = try container.decode([EmailProperties].self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: ContactSchema
         Used By: Content
     */
    class ContactSchema: Codable {
        public var phone: PhoneSchema?

        public var email: EmailSchema?

        public enum CodingKeys: String, CodingKey {
            case phone

            case email
        }

        public init(email: EmailSchema?, phone: PhoneSchema?) {
            self.phone = phone

            self.email = email
        }

        public func duplicate() -> ContactSchema {
            let dict = self.dictionary!
            let copy = ContactSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phone = try container.decode(PhoneSchema.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(EmailSchema.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: TagsSchema
         Used By: Content
     */
    class TagsSchema: Codable {
        public var application: String?

        public var id: String?

        public var tags: [TagSchema]?

        public enum CodingKeys: String, CodingKey {
            case application

            case id = "_id"

            case tags
        }

        public init(application: String?, tags: [TagSchema]?, id: String?) {
            self.application = application

            self.id = id

            self.tags = tags
        }

        public func duplicate() -> TagsSchema {
            let dict = self.dictionary!
            let copy = TagsSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

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
                tags = try container.decode([TagSchema].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: TagSchema
         Used By: Content
     */
    class TagSchema: Codable {
        public var name: String?

        public var url: String?

        public var type: String?

        public var subType: String?

        public var id: String?

        public var position: String?

        public var attributes: [String: Any]?

        public var content: String?

        public var source: TagSourceSchema?

        public enum CodingKeys: String, CodingKey {
            case name

            case url

            case type

            case subType = "sub_type"

            case id = "_id"

            case position

            case attributes

            case content

            case source = "__source"
        }

        public init(attributes: [String: Any]?, content: String?, name: String?, position: String?, subType: String?, type: String?, url: String?, id: String?, source: TagSourceSchema?) {
            self.name = name

            self.url = url

            self.type = type

            self.subType = subType

            self.id = id

            self.position = position

            self.attributes = attributes

            self.content = content

            self.source = source
        }

        public func duplicate() -> TagSchema {
            let dict = self.dictionary!
            let copy = TagSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

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
                subType = try container.decode(String.self, forKey: .subType)

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
                position = try container.decode(String.self, forKey: .position)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(TagSourceSchema.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(position, forKey: .position)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }

    /*
         Model: TagSourceSchema
         Used By: Content
     */
    class TagSourceSchema: Codable {
        public var type: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case id
        }

        public init(id: String?, type: String?) {
            self.type = type

            self.id = id
        }

        public func duplicate() -> TagSourceSchema {
            let dict = self.dictionary!
            let copy = TagSourceSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
