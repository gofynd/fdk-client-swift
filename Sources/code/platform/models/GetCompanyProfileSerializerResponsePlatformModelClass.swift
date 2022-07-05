

import Foundation
public extension PlatformClient {
    /*
         Model: GetCompanyProfileSerializerResponse
         Used By: CompanyProfile
     */

    class GetCompanyProfileSerializerResponse: Codable {
        public var name: String?

        public var sellGstExemptedProducts: Bool?

        public var businessType: String

        public var corrections: [[String: Any]]?

        public var franchiseEnabled: Bool?

        public var storeName: String?

        public var aboutBusiness: String?

        public var contactDetails: ContactDetails?

        public var createdBy: UserSerializer?

        public var warnings: [String: Any]?

        public var businessDetails: BusinessDetails?

        public var notificationEmails: [String]?

        public var businessInfo: String?

        public var documents: [Document]?

        public var verifiedBy: UserSerializer?

        public var stage: String?

        public var addresses: [GetAddressSerializer]?

        public var mode: String?

        public var modifiedBy: UserSerializer?

        public var verifiedOn: String?

        public var createdOn: String?

        public var uid: Int

        public var suppressions: [[String: Any]]?

        public var companyType: String

        public var modifiedOn: String?

        public var businessCountryInfo: BusinessCountryInfo?

        public var taxes: [CompanyTaxesSerializer]?

        public var annualTurnover: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case sellGstExemptedProducts = "sell_gst_exempted_products"

            case businessType = "business_type"

            case corrections

            case franchiseEnabled = "franchise_enabled"

            case storeName = "store_name"

            case aboutBusiness = "about_business"

            case contactDetails = "contact_details"

            case createdBy = "created_by"

            case warnings

            case businessDetails = "business_details"

            case notificationEmails = "notification_emails"

            case businessInfo = "business_info"

            case documents

            case verifiedBy = "verified_by"

            case stage

            case addresses

            case mode

            case modifiedBy = "modified_by"

            case verifiedOn = "verified_on"

            case createdOn = "created_on"

            case uid

            case suppressions

            case companyType = "company_type"

            case modifiedOn = "modified_on"

            case businessCountryInfo = "business_country_info"

            case taxes

            case annualTurnover = "annual_turnover"
        }

        public init(aboutBusiness: String? = nil, addresses: [GetAddressSerializer]? = nil, annualTurnover: String? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String, companyType: String, contactDetails: ContactDetails? = nil, corrections: [[String: Any]]? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, mode: String? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, sellGstExemptedProducts: Bool? = nil, stage: String? = nil, storeName: String? = nil, suppressions: [[String: Any]]? = nil, taxes: [CompanyTaxesSerializer]? = nil, uid: Int, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil) {
            self.name = name

            self.sellGstExemptedProducts = sellGstExemptedProducts

            self.businessType = businessType

            self.corrections = corrections

            self.franchiseEnabled = franchiseEnabled

            self.storeName = storeName

            self.aboutBusiness = aboutBusiness

            self.contactDetails = contactDetails

            self.createdBy = createdBy

            self.warnings = warnings

            self.businessDetails = businessDetails

            self.notificationEmails = notificationEmails

            self.businessInfo = businessInfo

            self.documents = documents

            self.verifiedBy = verifiedBy

            self.stage = stage

            self.addresses = addresses

            self.mode = mode

            self.modifiedBy = modifiedBy

            self.verifiedOn = verifiedOn

            self.createdOn = createdOn

            self.uid = uid

            self.suppressions = suppressions

            self.companyType = companyType

            self.modifiedOn = modifiedOn

            self.businessCountryInfo = businessCountryInfo

            self.taxes = taxes

            self.annualTurnover = annualTurnover
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            businessType = try container.decode(String.self, forKey: .businessType)

            do {
                corrections = try container.decode([[String: Any]].self, forKey: .corrections)

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
                storeName = try container.decode(String.self, forKey: .storeName)

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
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
                documents = try container.decode([Document].self, forKey: .documents)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                mode = try container.decode(String.self, forKey: .mode)

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
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                suppressions = try container.decode([[String: Any]].self, forKey: .suppressions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyType = try container.decode(String.self, forKey: .companyType)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                taxes = try container.decode([CompanyTaxesSerializer].self, forKey: .taxes)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sellGstExemptedProducts, forKey: .sellGstExemptedProducts)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(corrections, forKey: .corrections)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(aboutBusiness, forKey: .aboutBusiness)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(suppressions, forKey: .suppressions)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(annualTurnover, forKey: .annualTurnover)
        }
    }
}
