

import Foundation
public extension PlatformClient {
    /*
         Model: GetBrandResponseSerializer
         Used By: CompanyProfile
     */

    class GetBrandResponseSerializer: Codable {
        public var ownerId: Int?

        public var name: String

        public var rejectReason: String?

        public var slugKey: String?

        public var localeLanguage: [String: Any]?

        public var description: String?

        public var stage: String?

        public var customJson: [String: Any]?

        public var warnings: [String: Any]?

        public var uid: Int?

        public var corrections: [[String: Any]]?

        public var logo: String?

        public var banner: BrandBannerSerializer?

        public var synonyms: [String]?

        public var mode: String?

        public var documents: [BrandDocumentsSerializer]?

        public var brandOwner: String?

        public enum CodingKeys: String, CodingKey {
            case ownerId = "owner_id"

            case name

            case rejectReason = "reject_reason"

            case slugKey = "slug_key"

            case localeLanguage = "_locale_language"

            case description

            case stage

            case customJson = "_custom_json"

            case warnings

            case uid

            case corrections

            case logo

            case banner

            case synonyms

            case mode

            case documents

            case brandOwner = "brand_owner"
        }

        public init(banner: BrandBannerSerializer? = nil, brandOwner: String? = nil, corrections: [[String: Any]]? = nil, description: String? = nil, documents: [BrandDocumentsSerializer]? = nil, logo: String? = nil, mode: String? = nil, name: String, ownerId: Int? = nil, rejectReason: String? = nil, slugKey: String? = nil, stage: String? = nil, synonyms: [String]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            self.ownerId = ownerId

            self.name = name

            self.rejectReason = rejectReason

            self.slugKey = slugKey

            self.localeLanguage = localeLanguage

            self.description = description

            self.stage = stage

            self.customJson = customJson

            self.warnings = warnings

            self.uid = uid

            self.corrections = corrections

            self.logo = logo

            self.banner = banner

            self.synonyms = synonyms

            self.mode = mode

            self.documents = documents

            self.brandOwner = brandOwner
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ownerId = try container.decode(Int.self, forKey: .ownerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slugKey = try container.decode(String.self, forKey: .slugKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                corrections = try container.decode([[String: Any]].self, forKey: .corrections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([BrandDocumentsSerializer].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandOwner = try container.decode(String.self, forKey: .brandOwner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ownerId, forKey: .ownerId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(corrections, forKey: .corrections)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(brandOwner, forKey: .brandOwner)
        }
    }
}
