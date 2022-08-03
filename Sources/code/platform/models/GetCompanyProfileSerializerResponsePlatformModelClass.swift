

import Foundation
public extension PlatformClient {
    /*
         Model: GetCompanyProfileSerializerResponse
         Used By: CompanyProfile
     */

    class GetCompanyProfileSerializerResponse: Codable {
        public var uid: Int

        public var notificationEmails: [String]?

        public var modifiedBy: UserSerializer?

        public var corrections: [[String: Any]]?

        public var addresses: [GetAddressSerializer]?

        public var aboutBusiness: String?

        public var verifiedBy: UserSerializer?

        public var businessCountryInfo: BusinessCountryInfo?

        public var documents: [Document]?

        public var businessType: String

        public var companyType: String

        public var warnings: [String: Any]?

        public var createdOn: String?

        public var storeName: String?

        public var businessDetails: BusinessDetails?

        public var businessInfo: String?

        public var createdBy: UserSerializer?

        public var sellGstExemptedProducts: Bool?

        public var contactDetails: ContactDetails?

        public var code: String?

        public var franchiseEnabled: Bool?

        public var taxes: [CompanyTaxesSerializer]?

        public var stage: String?

        public var mode: String?

        public var verifiedOn: String?

        public var suppressions: [[String: Any]]?

        public var name: String?

        public var annualTurnover: String?

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case notificationEmails = "notification_emails"

            case modifiedBy = "modified_by"

            case corrections

            case addresses

            case aboutBusiness = "about_business"

            case verifiedBy = "verified_by"

            case businessCountryInfo = "business_country_info"

            case documents

            case businessType = "business_type"

            case companyType = "company_type"

            case warnings

            case createdOn = "created_on"

            case storeName = "store_name"

            case businessDetails = "business_details"

            case businessInfo = "business_info"

            case createdBy = "created_by"

            case sellGstExemptedProducts = "sell_gst_exempted_products"

            case contactDetails = "contact_details"

            case code

            case franchiseEnabled = "franchise_enabled"

            case taxes

            case stage

            case mode

            case verifiedOn = "verified_on"

            case suppressions

            case name

            case annualTurnover = "annual_turnover"

            case modifiedOn = "modified_on"
        }

        public init(aboutBusiness: String? = nil, addresses: [GetAddressSerializer]? = nil, annualTurnover: String? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String, code: String? = nil, companyType: String, contactDetails: ContactDetails? = nil, corrections: [[String: Any]]? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, mode: String? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, sellGstExemptedProducts: Bool? = nil, stage: String? = nil, storeName: String? = nil, suppressions: [[String: Any]]? = nil, taxes: [CompanyTaxesSerializer]? = nil, uid: Int, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil) {
            self.uid = uid

            self.notificationEmails = notificationEmails

            self.modifiedBy = modifiedBy

            self.corrections = corrections

            self.addresses = addresses

            self.aboutBusiness = aboutBusiness

            self.verifiedBy = verifiedBy

            self.businessCountryInfo = businessCountryInfo

            self.documents = documents

            self.businessType = businessType

            self.companyType = companyType

            self.warnings = warnings

            self.createdOn = createdOn

            self.storeName = storeName

            self.businessDetails = businessDetails

            self.businessInfo = businessInfo

            self.createdBy = createdBy

            self.sellGstExemptedProducts = sellGstExemptedProducts

            self.contactDetails = contactDetails

            self.code = code

            self.franchiseEnabled = franchiseEnabled

            self.taxes = taxes

            self.stage = stage

            self.mode = mode

            self.verifiedOn = verifiedOn

            self.suppressions = suppressions

            self.name = name

            self.annualTurnover = annualTurnover

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
                corrections = try container.decode([[String: Any]].self, forKey: .corrections)

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
                aboutBusiness = try container.decode(String.self, forKey: .aboutBusiness)

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
                businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)

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

            businessType = try container.decode(String.self, forKey: .businessType)

            companyType = try container.decode(String.self, forKey: .companyType)

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
                storeName = try container.decode(String.self, forKey: .storeName)

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
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

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
                sellGstExemptedProducts = try container.decode(Bool.self, forKey: .sellGstExemptedProducts)

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
                code = try container.decode(String.self, forKey: .code)

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
                taxes = try container.decode([CompanyTaxesSerializer].self, forKey: .taxes)

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

            do {
                suppressions = try container.decode([[String: Any]].self, forKey: .suppressions)

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
                annualTurnover = try container.decode(String.self, forKey: .annualTurnover)

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

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(corrections, forKey: .corrections)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(aboutBusiness, forKey: .aboutBusiness)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sellGstExemptedProducts, forKey: .sellGstExemptedProducts)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(suppressions, forKey: .suppressions)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(annualTurnover, forKey: .annualTurnover)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
