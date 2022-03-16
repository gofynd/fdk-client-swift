import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: RedirectDevice
        Used By: Share
    */

    class RedirectDevice: Codable {
        
        
        public var link: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case type = "type"
            
        }

        public init(link: String?, type: String?) {
            
            self.link = link
            
            self.type = type
            
        }

        public func duplicate() -> RedirectDevice {
            let dict = self.dictionary!
            let copy = RedirectDevice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: WebRedirect
        Used By: Share
    */

    class WebRedirect: Codable {
        
        
        public var link: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case type = "type"
            
        }

        public init(link: String?, type: String?) {
            
            self.link = link
            
            self.type = type
            
        }

        public func duplicate() -> WebRedirect {
            let dict = self.dictionary!
            let copy = WebRedirect(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: Redirects
        Used By: Share
    */

    class Redirects: Codable {
        
        
        public var ios: RedirectDevice?
        
        public var android: RedirectDevice?
        
        public var web: WebRedirect?
        
        public var forceWeb: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case ios = "ios"
            
            case android = "android"
            
            case web = "web"
            
            case forceWeb = "force_web"
            
        }

        public init(android: RedirectDevice?, forceWeb: Bool?, ios: RedirectDevice?, web: WebRedirect?) {
            
            self.ios = ios
            
            self.android = android
            
            self.web = web
            
            self.forceWeb = forceWeb
            
        }

        public func duplicate() -> Redirects {
            let dict = self.dictionary!
            let copy = Redirects(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ios = try container.decode(RedirectDevice.self, forKey: .ios)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    android = try container.decode(RedirectDevice.self, forKey: .android)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    web = try container.decode(WebRedirect.self, forKey: .web)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forceWeb = try container.decode(Bool.self, forKey: .forceWeb)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ios, forKey: .ios)
            
            
            
            
            try? container.encodeIfPresent(android, forKey: .android)
            
            
            
            
            try? container.encodeIfPresent(web, forKey: .web)
            
            
            
            
            try? container.encodeIfPresent(forceWeb, forKey: .forceWeb)
            
            
        }
        
    }
    
    /*
        Model: CampaignShortLink
        Used By: Share
    */

    class CampaignShortLink: Codable {
        
        
        public var source: String?
        
        public var medium: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case medium = "medium"
            
        }

        public init(medium: String?, source: String?) {
            
            self.source = source
            
            self.medium = medium
            
        }

        public func duplicate() -> CampaignShortLink {
            let dict = self.dictionary!
            let copy = CampaignShortLink(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medium = try container.decode(String.self, forKey: .medium)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(medium, forKey: .medium)
            
            
        }
        
    }
    
    /*
        Model: Attribution
        Used By: Share
    */

    class Attribution: Codable {
        
        
        public var campaignCookieExpiry: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case campaignCookieExpiry = "campaign_cookie_expiry"
            
        }

        public init(campaignCookieExpiry: String?) {
            
            self.campaignCookieExpiry = campaignCookieExpiry
            
        }

        public func duplicate() -> Attribution {
            let dict = self.dictionary!
            let copy = Attribution(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    campaignCookieExpiry = try container.decode(String.self, forKey: .campaignCookieExpiry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(campaignCookieExpiry, forKey: .campaignCookieExpiry)
            
            
        }
        
    }
    
    /*
        Model: SocialMediaTags
        Used By: Share
    */

    class SocialMediaTags: Codable {
        
        
        public var title: String?
        
        public var description: String?
        
        public var image: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case image = "image"
            
        }

        public init(description: String?, image: String?, title: String?) {
            
            self.title = title
            
            self.description = description
            
            self.image = image
            
        }

        public func duplicate() -> SocialMediaTags {
            let dict = self.dictionary!
            let copy = SocialMediaTags(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(String.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
        }
        
    }
    
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
            
            case title = "title"
            
            case url = "url"
            
            case hash = "hash"
            
            case active = "active"
            
            case expireAt = "expire_at"
            
            case enableTracking = "enable_tracking"
            
            case personalized = "personalized"
            
            case campaign = "campaign"
            
            case redirects = "redirects"
            
            case attribution = "attribution"
            
            case socialMediaTags = "social_media_tags"
            
            case count = "count"
            
        }

        public init(active: Bool?, attribution: Attribution?, campaign: CampaignShortLink?, count: Int?, enableTracking: Bool?, expireAt: String?, hash: String?, personalized: Bool?, redirects: Redirects?, socialMediaTags: SocialMediaTags?, title: String, url: String) {
            
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

        public func duplicate() -> ShortLinkReq {
            let dict = self.dictionary!
            let copy = ShortLinkReq(dictionary: dict)!
            return copy
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
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expireAt = try container.decode(String.self, forKey: .expireAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    personalized = try container.decode(Bool.self, forKey: .personalized)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    campaign = try container.decode(CampaignShortLink.self, forKey: .campaign)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    redirects = try container.decode(Redirects.self, forKey: .redirects)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attribution = try container.decode(Attribution.self, forKey: .attribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    socialMediaTags = try container.decode(SocialMediaTags.self, forKey: .socialMediaTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
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
    
    /*
        Model: UrlInfo
        Used By: Share
    */

    class UrlInfo: Codable {
        
        
        public var original: String?
        
        public var short: String?
        
        public var hash: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case original = "original"
            
            case short = "short"
            
            case hash = "hash"
            
        }

        public init(hash: String?, original: String?, short: String?) {
            
            self.original = original
            
            self.short = short
            
            self.hash = hash
            
        }

        public func duplicate() -> UrlInfo {
            let dict = self.dictionary!
            let copy = UrlInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    original = try container.decode(String.self, forKey: .original)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    short = try container.decode(String.self, forKey: .short)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hash = try container.decode(String.self, forKey: .hash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(original, forKey: .original)
            
            
            
            
            try? container.encodeIfPresent(short, forKey: .short)
            
            
            
            
            try? container.encodeIfPresent(hash, forKey: .hash)
            
            
        }
        
    }
    
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
            
            case title = "title"
            
            case url = "url"
            
            case createdBy = "created_by"
            
            case appRedirect = "app_redirect"
            
            case fallback = "fallback"
            
            case active = "active"
            
            case id = "_id"
            
            case enableTracking = "enable_tracking"
            
            case expireAt = "expire_at"
            
            case application = "application"
            
            case userId = "user_id"
            
            case createdAt = "created_at"
            
            case meta = "meta"
            
            case updatedAt = "updated_at"
            
            case personalized = "personalized"
            
            case campaign = "campaign"
            
            case redirects = "redirects"
            
            case attribution = "attribution"
            
            case socialMediaTags = "social_media_tags"
            
            case count = "count"
            
        }

        public init(active: Bool?, application: String?, appRedirect: Bool?, attribution: Attribution?, campaign: CampaignShortLink?, count: Int?, createdAt: String?, createdBy: String?, enableTracking: Bool?, expireAt: String?, fallback: String?, meta: [String: Any]?, personalized: Bool?, redirects: Redirects?, socialMediaTags: SocialMediaTags?, title: String?, updatedAt: String?, url: UrlInfo?, userId: String?, id: String?) {
            
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

        public func duplicate() -> ShortLinkRes {
            let dict = self.dictionary!
            let copy = ShortLinkRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(UrlInfo.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appRedirect = try container.decode(Bool.self, forKey: .appRedirect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fallback = try container.decode(String.self, forKey: .fallback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expireAt = try container.decode(String.self, forKey: .expireAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    personalized = try container.decode(Bool.self, forKey: .personalized)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    campaign = try container.decode(CampaignShortLink.self, forKey: .campaign)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    redirects = try container.decode(Redirects.self, forKey: .redirects)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attribution = try container.decode(Attribution.self, forKey: .attribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    socialMediaTags = try container.decode(SocialMediaTags.self, forKey: .socialMediaTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
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
    
    /*
        Model: ShortLinkList
        Used By: Share
    */

    class ShortLinkList: Codable {
        
        
        public var items: [ShortLinkRes]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [ShortLinkRes]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> ShortLinkList {
            let dict = self.dictionary!
            let copy = ShortLinkList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([ShortLinkRes].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: ErrorRes
        Used By: Share
    */

    class ErrorRes: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> ErrorRes {
            let dict = self.dictionary!
            let copy = ErrorRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
}
