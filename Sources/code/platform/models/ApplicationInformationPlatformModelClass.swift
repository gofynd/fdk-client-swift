

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationInformation
         Used By: Configuration
     */

    class ApplicationInformation: Codable {
        public var address: InformationAddress?

        public var support: InformationSupport?

        public var socialLinks: SocialLinks?

        public var links: Links?

        public var copyrightText: String?

        public var id: String?

        public var businessHighlights: BusinessHighlights?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case address

            case support

            case socialLinks = "social_links"

            case links

            case copyrightText = "copyright_text"

            case id = "_id"

            case businessHighlights = "business_highlights"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(address: InformationAddress? = nil, application: String? = nil, businessHighlights: BusinessHighlights? = nil, copyrightText: String? = nil, createdAt: String? = nil, links: Links? = nil, socialLinks: SocialLinks? = nil, support: InformationSupport? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.address = address

            self.support = support

            self.socialLinks = socialLinks

            self.links = links

            self.copyrightText = copyrightText

            self.id = id

            self.businessHighlights = businessHighlights

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address = try container.decode(InformationAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                support = try container.decode(InformationSupport.self, forKey: .support)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                socialLinks = try container.decode(SocialLinks.self, forKey: .socialLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                links = try container.decode(Links.self, forKey: .links)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                copyrightText = try container.decode(String.self, forKey: .copyrightText)

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
                businessHighlights = try container.decode(BusinessHighlights.self, forKey: .businessHighlights)

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
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(support, forKey: .support)

            try? container.encodeIfPresent(socialLinks, forKey: .socialLinks)

            try? container.encodeIfPresent(links, forKey: .links)

            try? container.encodeIfPresent(copyrightText, forKey: .copyrightText)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(businessHighlights, forKey: .businessHighlights)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
