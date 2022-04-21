

import Foundation
public extension ApplicationClient {
    /*
         Model: ShortLinkRes
         Used By: Share
     */
    class ShortLinkRes: Codable {
        public var title: String?

        public var url: UrlInfo?

        public var createdBy: String?

        public var appRedirect: Bool?

        public var fallback: String?

        public var active: Bool?

        public var id: String?

        public var enableTracking: Bool?

        public var expireAt: String?

        public var application: String?

        public var userId: String?

        public var createdAt: String?

        public var meta: [String: Any]?

        public var updatedAt: String?

        public var personalized: Bool?

        public var campaign: CampaignShortLink?

        public var redirects: Redirects?

        public var attribution: Attribution?

        public var socialMediaTags: SocialMediaTags?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case title

            case url

            case createdBy = "created_by"

            case appRedirect = "app_redirect"

            case fallback

            case active

            case id = "_id"

            case enableTracking = "enable_tracking"

            case expireAt = "expire_at"

            case application

            case userId = "user_id"

            case createdAt = "created_at"

            case meta

            case updatedAt = "updated_at"

            case personalized

            case campaign

            case redirects

            case attribution

            case socialMediaTags = "social_media_tags"

            case count
        }

        public init(active: Bool? = nil, application: String? = nil, appRedirect: Bool? = nil, attribution: Attribution? = nil, campaign: CampaignShortLink? = nil, count: Int? = nil, createdAt: String? = nil, createdBy: String? = nil, enableTracking: Bool? = nil, expireAt: String? = nil, fallback: String? = nil, meta: [String: Any]? = nil, personalized: Bool? = nil, redirects: Redirects? = nil, socialMediaTags: SocialMediaTags? = nil, title: String? = nil, updatedAt: String? = nil, url: UrlInfo? = nil, userId: String? = nil, id: String? = nil) {
            self.title = title

            self.url = url

            self.createdBy = createdBy

            self.appRedirect = appRedirect

            self.fallback = fallback

            self.active = active

            self.id = id

            self.enableTracking = enableTracking

            self.expireAt = expireAt

            self.application = application

            self.userId = userId

            self.createdAt = createdAt

            self.meta = meta

            self.updatedAt = updatedAt

            self.personalized = personalized

            self.campaign = campaign

            self.redirects = redirects

            self.attribution = attribution

            self.socialMediaTags = socialMediaTags

            self.count = count
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
                url = try container.decode(UrlInfo.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appRedirect = try container.decode(Bool.self, forKey: .appRedirect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fallback = try container.decode(String.self, forKey: .fallback)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expireAt = try container.decode(String.self, forKey: .expireAt)

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
                userId = try container.decode(String.self, forKey: .userId)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                personalized = try container.decode(Bool.self, forKey: .personalized)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                campaign = try container.decode(CampaignShortLink.self, forKey: .campaign)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirects = try container.decode(Redirects.self, forKey: .redirects)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attribution = try container.decode(Attribution.self, forKey: .attribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                socialMediaTags = try container.decode(SocialMediaTags.self, forKey: .socialMediaTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(appRedirect, forKey: .appRedirect)

            try? container.encodeIfPresent(fallback, forKey: .fallback)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(personalized, forKey: .personalized)

            try? container.encodeIfPresent(campaign, forKey: .campaign)

            try? container.encodeIfPresent(redirects, forKey: .redirects)

            try? container.encodeIfPresent(attribution, forKey: .attribution)

            try? container.encodeIfPresent(socialMediaTags, forKey: .socialMediaTags)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
