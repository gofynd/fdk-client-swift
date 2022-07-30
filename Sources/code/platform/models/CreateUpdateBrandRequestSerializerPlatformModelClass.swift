

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateBrandRequestSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateBrandRequestSerializer: Codable {
        public var uid: Int?

        public var logo: String

        public var synonyms: [String]?

        public var companyId: Int?

        public var brandTier: String?

        public var documentRequired: Bool?

        public var documents: [BrandDocumentSerializer]?

        public var description: String?

        public var banner: BrandBannerSerializer

        public var name: String

        public var localeLanguage: [String: Any]?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case logo

            case synonyms

            case companyId = "company_id"

            case brandTier = "brand_tier"

            case documentRequired = "document_required"

            case documents

            case description

            case banner

            case name

            case localeLanguage = "_locale_language"

            case customJson = "_custom_json"
        }

        public init(banner: BrandBannerSerializer, brandTier: String? = nil, companyId: Int? = nil, description: String? = nil, documents: [BrandDocumentSerializer]? = nil, documentRequired: Bool? = nil, logo: String, name: String, synonyms: [String]? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            self.uid = uid

            self.logo = logo

            self.synonyms = synonyms

            self.companyId = companyId

            self.brandTier = brandTier

            self.documentRequired = documentRequired

            self.documents = documents

            self.description = description

            self.banner = banner

            self.name = name

            self.localeLanguage = localeLanguage

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

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
                documentRequired = try container.decode(Bool.self, forKey: .documentRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([BrandDocumentSerializer].self, forKey: .documents)

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

            banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)

            name = try container.decode(String.self, forKey: .name)

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandTier, forKey: .brandTier)

            try? container.encodeIfPresent(documentRequired, forKey: .documentRequired)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
