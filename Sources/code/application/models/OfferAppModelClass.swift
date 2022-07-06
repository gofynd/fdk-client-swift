

import Foundation
public extension ApplicationClient {
    /*
         Model: Offer
         Used By: Rewards
     */
    class Offer: Codable {
        public var schedule: Schedule?

        public var active: Bool?

        public var applicationId: String?

        public var bannerImage: Asset?

        public var createdAt: String?

        public var name: String?

        public var rule: [String: Any]?

        public var share: ShareMessages?

        public var subText: String?

        public var text: String?

        public var type: String?

        public var updatedAt: String?

        public var updatedBy: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case active

            case applicationId = "application_id"

            case bannerImage = "banner_image"

            case createdAt = "created_at"

            case name

            case rule

            case share

            case subText = "sub_text"

            case text

            case type

            case updatedAt = "updated_at"

            case updatedBy = "updated_by"

            case url
        }

        public init(active: Bool? = nil, applicationId: String? = nil, bannerImage: Asset? = nil, createdAt: String? = nil, name: String? = nil, rule: [String: Any]? = nil, share: ShareMessages? = nil, subText: String? = nil, text: String? = nil, type: String? = nil, updatedAt: String? = nil, updatedBy: String? = nil, url: String? = nil, schedule: Schedule? = nil) {
            self.schedule = schedule

            self.active = active

            self.applicationId = applicationId

            self.bannerImage = bannerImage

            self.createdAt = createdAt

            self.name = name

            self.rule = rule

            self.share = share

            self.subText = subText

            self.text = text

            self.type = type

            self.updatedAt = updatedAt

            self.updatedBy = updatedBy

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

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
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bannerImage = try container.decode(Asset.self, forKey: .bannerImage)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rule = try container.decode([String: Any].self, forKey: .rule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                share = try container.decode(ShareMessages.self, forKey: .share)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subText = try container.decode(String.self, forKey: .subText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(bannerImage, forKey: .bannerImage)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(share, forKey: .share)

            try? container.encodeIfPresent(subText, forKey: .subText)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
