

import Foundation
public extension ApplicationClient {
    /*
         Model: ShortLinkReq
         Used By: Share
     */
    class ShortLinkReq: Codable {
        public var title: String

        public var url: String

        public var hash: String?

        public var active: Bool?

        public var expireAt: String?

        public var enableTracking: Bool?

        public var personalized: Bool?

        public var campaign: CampaignShortLink?

        public var redirects: Redirects?

        public var attribution: Attribution?

        public var socialMediaTags: SocialMediaTags?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case title

            case url

            case hash

            case active

            case expireAt = "expire_at"

            case enableTracking = "enable_tracking"

            case personalized

            case campaign

            case redirects

            case attribution

            case socialMediaTags = "social_media_tags"

            case count
        }

        public init(active: Bool? = nil, attribution: Attribution? = nil, campaign: CampaignShortLink? = nil, count: Int? = nil, enableTracking: Bool? = nil, expireAt: String? = nil, hash: String? = nil, personalized: Bool? = nil, redirects: Redirects? = nil, socialMediaTags: SocialMediaTags? = nil, title: String, url: String) {
            self.title = title

            self.url = url

            self.hash = hash

            self.active = active

            self.expireAt = expireAt

            self.enableTracking = enableTracking

            self.personalized = personalized

            self.campaign = campaign

            self.redirects = redirects

            self.attribution = attribution

            self.socialMediaTags = socialMediaTags

            self.count = count
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            url = try container.decode(String.self, forKey: .url)

            do {
                hash = try container.decode(String.self, forKey: .hash)

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
                expireAt = try container.decode(String.self, forKey: .expireAt)

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

            try? container.encodeIfPresent(hash, forKey: .hash)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(personalized, forKey: .personalized)

            try? container.encodeIfPresent(campaign, forKey: .campaign)

            try? container.encodeIfPresent(redirects, forKey: .redirects)

            try? container.encodeIfPresent(attribution, forKey: .attribution)

            try? container.encodeIfPresent(socialMediaTags, forKey: .socialMediaTags)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
