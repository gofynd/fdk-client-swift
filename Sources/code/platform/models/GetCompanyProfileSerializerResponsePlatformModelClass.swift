

import Foundation
public extension PlatformClient {
    /*
         Model: GetCompanyProfileSerializerResponse
         Used By: CompanyProfile
     */

    class GetCompanyProfileSerializerResponse: Codable {
        public var documents: [Document]?

        public var warnings: [String: Any]?

        public var businessTypeName: String?

        public var sellGstExemptedProducts: Bool?

        public var uid: Int

        public var annualTurnover: String?

        public var businessInfo: String?

        public var suppressions: [[String: Any]]?

        public var aboutBusiness: String?

        public var taxes: [CompanyTaxesSerializer]?

        public var businessType: String

        public var stage: String?

        public var franchiseEnabled: Bool?

        public var businessCountryInfo: BusinessCountryInfo?

        public var corrections: [[String: Any]]?

        public var contactDetails: ContactDetails?

        public var mode: String?

        public var addresses: [GetAddressSerializer]?

        public var code: String?

        public var companyType: String?

        public var notificationEmails: [String]?

        public var businessDetails: BusinessDetails?

        public var name: String?

        public var storeName: String?

        public enum CodingKeys: String, CodingKey {
            case documents

            case warnings

            case businessTypeName = "business_type_name"

            case sellGstExemptedProducts = "sell_gst_exempted_products"

            case uid

            case annualTurnover = "annual_turnover"

            case businessInfo = "business_info"

            case suppressions

            case aboutBusiness = "about_business"

            case taxes

            case businessType = "business_type"

            case stage

            case franchiseEnabled = "franchise_enabled"

            case businessCountryInfo = "business_country_info"

            case corrections

            case contactDetails = "contact_details"

            case mode

            case addresses

            case code

            case companyType = "company_type"

            case notificationEmails = "notification_emails"

            case businessDetails = "business_details"

            case name

            case storeName = "store_name"
        }

        public init(aboutBusiness: String? = nil, addresses: [GetAddressSerializer]? = nil, annualTurnover: String? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String, businessTypeName: String? = nil, code: String? = nil, companyType: String? = nil, contactDetails: ContactDetails? = nil, corrections: [[String: Any]]? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, mode: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, sellGstExemptedProducts: Bool? = nil, stage: String? = nil, storeName: String? = nil, suppressions: [[String: Any]]? = nil, taxes: [CompanyTaxesSerializer]? = nil, uid: Int, warnings: [String: Any]? = nil) {
            self.documents = documents

            self.warnings = warnings

            self.businessTypeName = businessTypeName

            self.sellGstExemptedProducts = sellGstExemptedProducts

            self.uid = uid

            self.annualTurnover = annualTurnover

            self.businessInfo = businessInfo

            self.suppressions = suppressions

            self.aboutBusiness = aboutBusiness

            self.taxes = taxes

            self.businessType = businessType

            self.stage = stage

            self.franchiseEnabled = franchiseEnabled

            self.businessCountryInfo = businessCountryInfo

            self.corrections = corrections

            self.contactDetails = contactDetails

            self.mode = mode

            self.addresses = addresses

            self.code = code

            self.companyType = companyType

            self.notificationEmails = notificationEmails

            self.businessDetails = businessDetails

            self.name = name

            self.storeName = storeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                documents = try container.decode([Document].self, forKey: .documents)

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
                businessTypeName = try container.decode(String.self, forKey: .businessTypeName)

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

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                annualTurnover = try container.decode(String.self, forKey: .annualTurnover)

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
                suppressions = try container.decode([[String: Any]].self, forKey: .suppressions)

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
                taxes = try container.decode([CompanyTaxesSerializer].self, forKey: .taxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            businessType = try container.decode(String.self, forKey: .businessType)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)

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
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

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
                addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)

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
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
                name = try container.decode(String.self, forKey: .name)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(businessTypeName, forKey: .businessTypeName)

            try? container.encodeIfPresent(sellGstExemptedProducts, forKey: .sellGstExemptedProducts)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(annualTurnover, forKey: .annualTurnover)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(suppressions, forKey: .suppressions)

            try? container.encodeIfPresent(aboutBusiness, forKey: .aboutBusiness)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(corrections, forKey: .corrections)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeName, forKey: .storeName)
        }
    }
}
