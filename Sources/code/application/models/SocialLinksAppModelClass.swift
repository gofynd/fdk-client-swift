

import Foundation
public extension ApplicationClient {
    /*
         Model: SocialLinks
         Used By: Configuration
     */
    class SocialLinks: Codable {
        public var facebook: FacebookLink?

        public var instagram: InstagramLink?

        public var twitter: TwitterLink?

        public var pinterest: PinterestLink?

        public var googlePlus: GooglePlusLink?

        public var youtube: YoutubeLink?

        public var linkedIn: LinkedInLink?

        public var vimeo: VimeoLink?

        public var blogLink: BlogLink?

        public enum CodingKeys: String, CodingKey {
            case facebook

            case instagram

            case twitter

            case pinterest

            case googlePlus = "google_plus"

            case youtube

            case linkedIn = "linked_in"

            case vimeo

            case blogLink = "blog_link"
        }

        public init(blogLink: BlogLink? = nil, facebook: FacebookLink? = nil, googlePlus: GooglePlusLink? = nil, instagram: InstagramLink? = nil, linkedIn: LinkedInLink? = nil, pinterest: PinterestLink? = nil, twitter: TwitterLink? = nil, vimeo: VimeoLink? = nil, youtube: YoutubeLink? = nil) {
            self.facebook = facebook

            self.instagram = instagram

            self.twitter = twitter

            self.pinterest = pinterest

            self.googlePlus = googlePlus

            self.youtube = youtube

            self.linkedIn = linkedIn

            self.vimeo = vimeo

            self.blogLink = blogLink
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                facebook = try container.decode(FacebookLink.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                instagram = try container.decode(InstagramLink.self, forKey: .instagram)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                twitter = try container.decode(TwitterLink.self, forKey: .twitter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pinterest = try container.decode(PinterestLink.self, forKey: .pinterest)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googlePlus = try container.decode(GooglePlusLink.self, forKey: .googlePlus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                youtube = try container.decode(YoutubeLink.self, forKey: .youtube)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                linkedIn = try container.decode(LinkedInLink.self, forKey: .linkedIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vimeo = try container.decode(VimeoLink.self, forKey: .vimeo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                blogLink = try container.decode(BlogLink.self, forKey: .blogLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(instagram, forKey: .instagram)

            try? container.encodeIfPresent(twitter, forKey: .twitter)

            try? container.encodeIfPresent(pinterest, forKey: .pinterest)

            try? container.encodeIfPresent(googlePlus, forKey: .googlePlus)

            try? container.encodeIfPresent(youtube, forKey: .youtube)

            try? container.encodeIfPresent(linkedIn, forKey: .linkedIn)

            try? container.encodeIfPresent(vimeo, forKey: .vimeo)

            try? container.encodeIfPresent(blogLink, forKey: .blogLink)
        }
    }
}
