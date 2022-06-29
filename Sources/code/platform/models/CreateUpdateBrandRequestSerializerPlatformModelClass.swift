

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateBrandRequestSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateBrandRequestSerializer: Codable {
        public var documents: [BrandDocumentSerializer]?

        public var customJson: [String: Any]?

        public var companyId: Int?

        public var brandTier: String?

        public var localeLanguage: [String: Any]?

        public var synonyms: [String]?

        public var uid: Int?

        public var description: String?

        public var logo: String

        public var documentRequired: Bool?

        public var banner: BrandBannerSerializer?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case documents

            case customJson = "_custom_json"

            case companyId = "company_id"

            case brandTier = "brand_tier"

            case localeLanguage = "_locale_language"

            case synonyms

            case uid

            case description

            case logo

            case documentRequired = "document_required"

            case banner

            case name
        }

        public init(banner: BrandBannerSerializer? = nil, brandTier: String? = nil, companyId: Int? = nil, description: String? = nil, documents: [BrandDocumentSerializer]? = nil, documentRequired: Bool? = nil, logo: String, name: String, synonyms: [String]? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            self.documents = documents

            self.customJson = customJson

            self.companyId = companyId

            self.brandTier = brandTier

            self.localeLanguage = localeLanguage

            self.synonyms = synonyms

            self.uid = uid

            self.description = description

            self.logo = logo

            self.documentRequired = documentRequired

            self.banner = banner

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                documents = try container.decode([BrandDocumentSerializer].self, forKey: .documents)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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
                uid = try container.decode(Int.self, forKey: .uid)

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

            logo = try container.decode(String.self, forKey: .logo)

            do {
                documentRequired = try container.decode(Bool.self, forKey: .documentRequired)

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

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandTier, forKey: .brandTier)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(documentRequired, forKey: .documentRequired)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
