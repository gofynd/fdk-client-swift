

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateBrandRequestSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateBrandRequestSerializer: Codable {
        public var synonyms: [String]?

        public var description: String?

        public var uid: Int?

        public var logo: String

        public var name: String

        public var companyId: Int?

        public var customJson: [String: Any]?

        public var brandTier: String?

        public var banner: BrandBannerSerializer?

        public var localeLanguage: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case synonyms

            case description

            case uid

            case logo

            case name

            case companyId = "company_id"

            case customJson = "_custom_json"

            case brandTier = "brand_tier"

            case banner

            case localeLanguage = "_locale_language"
        }

        public init(banner: BrandBannerSerializer? = nil, brandTier: String? = nil, companyId: Int? = nil, description: String? = nil, logo: String, name: String, synonyms: [String]? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            self.synonyms = synonyms

            self.description = description

            self.uid = uid

            self.logo = logo

            self.name = name

            self.companyId = companyId

            self.customJson = customJson

            self.brandTier = brandTier

            self.banner = banner

            self.localeLanguage = localeLanguage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            name = try container.decode(String.self, forKey: .name)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                brandTier = try container.decode(String.self, forKey: .brandTier)

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
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brandTier, forKey: .brandTier)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
        }
    }
}
