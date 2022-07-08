

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateBrandRequestSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateBrandRequestSerializer: Codable {
        public var name: String

        public var banner: BrandBannerSerializer

        public var documents: [BrandDocumentSerializer]?

        public var brandTier: String?

        public var companyId: Int?

        public var localeLanguage: [String: Any]?

        public var logo: String

        public var documentRequired: Bool?

        public var synonyms: [String]?

        public var description: String?

        public var uid: Int?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case banner

            case documents

            case brandTier = "brand_tier"

            case companyId = "company_id"

            case localeLanguage = "_locale_language"

            case logo

            case documentRequired = "document_required"

            case synonyms

            case description

            case uid

            case customJson = "_custom_json"
        }

        public init(banner: BrandBannerSerializer, brandTier: String? = nil, companyId: Int? = nil, description: String? = nil, documents: [BrandDocumentSerializer]? = nil, documentRequired: Bool? = nil, logo: String, name: String, synonyms: [String]? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            self.name = name

            self.banner = banner

            self.documents = documents

            self.brandTier = brandTier

            self.companyId = companyId

            self.localeLanguage = localeLanguage

            self.logo = logo

            self.documentRequired = documentRequired

            self.synonyms = synonyms

            self.description = description

            self.uid = uid

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)

            do {
                documents = try container.decode([BrandDocumentSerializer].self, forKey: .documents)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

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

            logo = try container.decode(String.self, forKey: .logo)

            do {
                documentRequired = try container.decode(Bool.self, forKey: .documentRequired)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(brandTier, forKey: .brandTier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(documentRequired, forKey: .documentRequired)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
