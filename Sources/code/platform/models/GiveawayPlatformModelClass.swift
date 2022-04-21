

import Foundation
public extension PlatformClient {
    /*
         Model: Giveaway
         Used By: Rewards
     */

    class Giveaway: Codable {
        public var id: String?

        public var schedule: Schedule?

        public var active: Bool?

        public var applicationId: String?

        public var audience: RewardsAudience?

        public var bannerImage: Asset?

        public var createdAt: String?

        public var description: String?

        public var name: String?

        public var rule: RewardsRule?

        public var title: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case schedule = "_schedule"

            case active

            case applicationId = "application_id"

            case audience

            case bannerImage = "banner_image"

            case createdAt = "created_at"

            case description

            case name

            case rule

            case title

            case updatedAt = "updated_at"
        }

        public init(active: Bool? = nil, applicationId: String? = nil, audience: RewardsAudience? = nil, bannerImage: Asset? = nil, createdAt: String? = nil, description: String? = nil, name: String? = nil, rule: RewardsRule? = nil, title: String? = nil, updatedAt: String? = nil, id: String? = nil, schedule: Schedule? = nil) {
            self.id = id

            self.schedule = schedule

            self.active = active

            self.applicationId = applicationId

            self.audience = audience

            self.bannerImage = bannerImage

            self.createdAt = createdAt

            self.description = description

            self.name = name

            self.rule = rule

            self.title = title

            self.updatedAt = updatedAt
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
                audience = try container.decode(RewardsAudience.self, forKey: .audience)

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
                description = try container.decode(String.self, forKey: .description)

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
                rule = try container.decode(RewardsRule.self, forKey: .rule)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(audience, forKey: .audience)

            try? container.encodeIfPresent(bannerImage, forKey: .bannerImage)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
