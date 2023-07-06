

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AnnouncementResponse
         Used By: Order
     */

    class AnnouncementResponse: Codable {
        public var fromDatetime: String?

        public var title: String?

        public var logoUrl: String?

        public var platformName: String?

        public var platformId: String?

        public var id: Int

        public var toDatetime: String?

        public var createdAt: String?

        public var companyId: Int?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case fromDatetime = "from_datetime"

            case title

            case logoUrl = "logo_url"

            case platformName = "platform_name"

            case platformId = "platform_id"

            case id

            case toDatetime = "to_datetime"

            case createdAt = "created_at"

            case companyId = "company_id"

            case description
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, description: String? = nil, fromDatetime: String? = nil, id: Int, logoUrl: String? = nil, platformId: String? = nil, platformName: String? = nil, title: String? = nil, toDatetime: String? = nil) {
            self.fromDatetime = fromDatetime

            self.title = title

            self.logoUrl = logoUrl

            self.platformName = platformName

            self.platformId = platformId

            self.id = id

            self.toDatetime = toDatetime

            self.createdAt = createdAt

            self.companyId = companyId

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fromDatetime = try container.decode(String.self, forKey: .fromDatetime)

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
                logoUrl = try container.decode(String.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformName = try container.decode(String.self, forKey: .platformName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformId = try container.decode(String.self, forKey: .platformId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                toDatetime = try container.decode(String.self, forKey: .toDatetime)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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

            try? container.encodeIfPresent(fromDatetime, forKey: .fromDatetime)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(platformName, forKey: .platformName)

            try? container.encodeIfPresent(platformId, forKey: .platformId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(toDatetime, forKey: .toDatetime)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AnnouncementResponse
         Used By: Order
     */

    class AnnouncementResponse: Codable {
        public var fromDatetime: String?

        public var title: String?

        public var logoUrl: String?

        public var platformName: String?

        public var platformId: String?

        public var id: Int

        public var toDatetime: String?

        public var createdAt: String?

        public var companyId: Int?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case fromDatetime = "from_datetime"

            case title

            case logoUrl = "logo_url"

            case platformName = "platform_name"

            case platformId = "platform_id"

            case id

            case toDatetime = "to_datetime"

            case createdAt = "created_at"

            case companyId = "company_id"

            case description
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, description: String? = nil, fromDatetime: String? = nil, id: Int, logoUrl: String? = nil, platformId: String? = nil, platformName: String? = nil, title: String? = nil, toDatetime: String? = nil) {
            self.fromDatetime = fromDatetime

            self.title = title

            self.logoUrl = logoUrl

            self.platformName = platformName

            self.platformId = platformId

            self.id = id

            self.toDatetime = toDatetime

            self.createdAt = createdAt

            self.companyId = companyId

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fromDatetime = try container.decode(String.self, forKey: .fromDatetime)

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
                logoUrl = try container.decode(String.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformName = try container.decode(String.self, forKey: .platformName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformId = try container.decode(String.self, forKey: .platformId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                toDatetime = try container.decode(String.self, forKey: .toDatetime)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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

            try? container.encodeIfPresent(fromDatetime, forKey: .fromDatetime)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(platformName, forKey: .platformName)

            try? container.encodeIfPresent(platformId, forKey: .platformId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(toDatetime, forKey: .toDatetime)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
