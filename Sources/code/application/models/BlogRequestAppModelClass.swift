

import Foundation
public extension ApplicationClient {
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

        public init(application: String? = nil, author: Author? = nil, content: [ResourceContent]? = nil, featureImage: Asset? = nil, published: Bool? = nil, readingTime: String? = nil, seo: SEO? = nil, slug: String? = nil, tags: [String]? = nil, title: String? = nil, customJson: [String: Any]? = nil, schedule: CronSchedule? = nil) {
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
}
