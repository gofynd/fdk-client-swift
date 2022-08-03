

import Foundation
public extension PlatformClient {
    /*
         Model: GetBrandResponseSerializer
         Used By: CompanyProfile
     */

    class GetBrandResponseSerializer: Codable {
        public var uid: Int?

        public var modifiedBy: UserSerializer?

        public var slugKey: String?

        public var corrections: [[String: Any]]?

        public var verifiedBy: UserSerializer?

        public var documents: [BrandDocumentsSerializer]?

        public var banner: BrandBannerSerializer?

        public var warnings: [String: Any]?

        public var createdOn: String?

        public var customJson: [String: Any]?

        public var createdBy: UserSerializer?

        public var brandOwner: String?

        public var synonyms: [String]?

        public var description: String?

        public var stage: String?

        public var mode: String?

        public var verifiedOn: String?

        public var name: String

        public var logo: String?

        public var ownerId: Int?

        public var localeLanguage: [String: Any]?

        public var rejectReason: String?

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case modifiedBy = "modified_by"

            case slugKey = "slug_key"

            case corrections

            case verifiedBy = "verified_by"

            case documents

            case banner

            case warnings

            case createdOn = "created_on"

            case customJson = "_custom_json"

            case createdBy = "created_by"

            case brandOwner = "brand_owner"

            case synonyms

            case description

            case stage

            case mode

            case verifiedOn = "verified_on"

            case name

            case logo

            case ownerId = "owner_id"

            case localeLanguage = "_locale_language"

            case rejectReason = "reject_reason"

            case modifiedOn = "modified_on"
        }

        public init(banner: BrandBannerSerializer? = nil, brandOwner: String? = nil, corrections: [[String: Any]]? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, description: String? = nil, documents: [BrandDocumentsSerializer]? = nil, logo: String? = nil, mode: String? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String, ownerId: Int? = nil, rejectReason: String? = nil, slugKey: String? = nil, stage: String? = nil, synonyms: [String]? = nil, uid: Int? = nil, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            self.uid = uid

            self.modifiedBy = modifiedBy

            self.slugKey = slugKey

            self.corrections = corrections

            self.verifiedBy = verifiedBy

            self.documents = documents

            self.banner = banner

            self.warnings = warnings

            self.createdOn = createdOn

            self.customJson = customJson

            self.createdBy = createdBy

            self.brandOwner = brandOwner

            self.synonyms = synonyms

            self.description = description

            self.stage = stage

            self.mode = mode

            self.verifiedOn = verifiedOn

            self.name = name

            self.logo = logo

            self.ownerId = ownerId

            self.localeLanguage = localeLanguage

            self.rejectReason = rejectReason

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                corrections = try container.decode([[String: Any]].self, forKey: .corrections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)

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
                banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ownerId = try container.decode(Int.self, forKey: .ownerId)

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
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(corrections, forKey: .corrections)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(brandOwner, forKey: .brandOwner)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(ownerId, forKey: .ownerId)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
