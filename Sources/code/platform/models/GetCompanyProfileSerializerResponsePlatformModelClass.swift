

import Foundation
public extension PlatformClient {
    /*
         Model: GetCompanyProfileSerializerResponse
         Used By: CompanyProfile
     */

    class GetCompanyProfileSerializerResponse: Codable {
        public var businessType: String

        public var corrections: [[String: Any]]?

        public var storeName: String?

        public var sellGstExemptedProducts: Bool?

        public var businessInfo: String?

        public var businessDetails: BusinessDetails?

        public var companyType: String?

        public var businessCountryInfo: BusinessCountryInfo?

        public var stage: String?

        public var warnings: [String: Any]?

        public var uid: Int

        public var notificationEmails: [String]?

        public var franchiseEnabled: Bool?

        public var annualTurnover: String?

        public var name: String?

        public var aboutBusiness: String?

        public var code: String?

        public var addresses: [GetAddressSerializer]?

        public var documents: [Document]?

        public var taxes: [CompanyTaxesSerializer]?

        public var contactDetails: ContactDetails?

        public var suppressions: [[String: Any]]?

        public var mode: String?

        public enum CodingKeys: String, CodingKey {
            case businessType = "business_type"

            case corrections

            case storeName = "store_name"

            case sellGstExemptedProducts = "sell_gst_exempted_products"

            case businessInfo = "business_info"

            case businessDetails = "business_details"

            case companyType = "company_type"

            case businessCountryInfo = "business_country_info"

            case stage

            case warnings

            case uid

            case notificationEmails = "notification_emails"

            case franchiseEnabled = "franchise_enabled"

            case annualTurnover = "annual_turnover"

            case name

            case aboutBusiness = "about_business"

            case code

            case addresses

            case documents

            case taxes

            case contactDetails = "contact_details"

            case suppressions

            case mode
        }

        public init(aboutBusiness: String? = nil, addresses: [GetAddressSerializer]? = nil, annualTurnover: String? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String, code: String? = nil, companyType: String? = nil, contactDetails: ContactDetails? = nil, corrections: [[String: Any]]? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, mode: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, sellGstExemptedProducts: Bool? = nil, stage: String? = nil, storeName: String? = nil, suppressions: [[String: Any]]? = nil, taxes: [CompanyTaxesSerializer]? = nil, uid: Int, warnings: [String: Any]? = nil) {
            self.businessType = businessType

            self.corrections = corrections

            self.storeName = storeName

            self.sellGstExemptedProducts = sellGstExemptedProducts

            self.businessInfo = businessInfo

            self.businessDetails = businessDetails

            self.companyType = companyType

            self.businessCountryInfo = businessCountryInfo

            self.stage = stage

            self.warnings = warnings

            self.uid = uid

            self.notificationEmails = notificationEmails

            self.franchiseEnabled = franchiseEnabled

            self.annualTurnover = annualTurnover

            self.name = name

            self.aboutBusiness = aboutBusiness

            self.code = code

            self.addresses = addresses

            self.documents = documents

            self.taxes = taxes

            self.contactDetails = contactDetails

            self.suppressions = suppressions

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            businessType = try container.decode(String.self, forKey: .businessType)

            do {
                corrections = try container.decode([[String: Any]].self, forKey: .corrections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellGstExemptedProducts = try container.decode(Bool.self, forKey: .sellGstExemptedProducts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                annualTurnover = try container.decode(String.self, forKey: .annualTurnover)

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
                aboutBusiness = try container.decode(String.self, forKey: .aboutBusiness)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([Document].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxes = try container.decode([CompanyTaxesSerializer].self, forKey: .taxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                suppressions = try container.decode([[String: Any]].self, forKey: .suppressions)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(corrections, forKey: .corrections)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(sellGstExemptedProducts, forKey: .sellGstExemptedProducts)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(annualTurnover, forKey: .annualTurnover)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(aboutBusiness, forKey: .aboutBusiness)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(suppressions, forKey: .suppressions)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
