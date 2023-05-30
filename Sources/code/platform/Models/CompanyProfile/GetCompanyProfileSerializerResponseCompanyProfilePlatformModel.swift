

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: GetCompanyProfileSerializerResponse
         Used By: CompanyProfile
     */

    class GetCompanyProfileSerializerResponse: Codable {
        public var businessInfo: String?

        public var businessType: String

        public var contactDetails: ContactDetails?

        public var verifiedOn: String?

        public var name: String?

        public var mode: String?

        public var verifiedBy: UserSerializer?

        public var uid: Int

        public var modifiedBy: UserSerializer?

        public var franchiseEnabled: Bool?

        public var taxes: [CompanyTaxesSerializer]?

        public var warnings: [String: Any]?

        public var createdBy: UserSerializer?

        public var businessDetails: BusinessDetails?

        public var businessCountryInfo: BusinessCountryInfo?

        public var notificationEmails: [String]?

        public var documents: [Document]?

        public var modifiedOn: String?

        public var stage: String?

        public var createdOn: String?

        public var addresses: [GetAddressSerializer]?

        public var customJson: [String: Any]?

        public var companyType: String

        public enum CodingKeys: String, CodingKey {
            case businessInfo = "business_info"

            case businessType = "business_type"

            case contactDetails = "contact_details"

            case verifiedOn = "verified_on"

            case name

            case mode

            case verifiedBy = "verified_by"

            case uid

            case modifiedBy = "modified_by"

            case franchiseEnabled = "franchise_enabled"

            case taxes

            case warnings

            case createdBy = "created_by"

            case businessDetails = "business_details"

            case businessCountryInfo = "business_country_info"

            case notificationEmails = "notification_emails"

            case documents

            case modifiedOn = "modified_on"

            case stage

            case createdOn = "created_on"

            case addresses

            case customJson = "_custom_json"

            case companyType = "company_type"
        }

        public init(addresses: [GetAddressSerializer]? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String, companyType: String, contactDetails: ContactDetails? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, mode: String? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, stage: String? = nil, taxes: [CompanyTaxesSerializer]? = nil, uid: Int, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.businessInfo = businessInfo

            self.businessType = businessType

            self.contactDetails = contactDetails

            self.verifiedOn = verifiedOn

            self.name = name

            self.mode = mode

            self.verifiedBy = verifiedBy

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.franchiseEnabled = franchiseEnabled

            self.taxes = taxes

            self.warnings = warnings

            self.createdBy = createdBy

            self.businessDetails = businessDetails

            self.businessCountryInfo = businessCountryInfo

            self.notificationEmails = notificationEmails

            self.documents = documents

            self.modifiedOn = modifiedOn

            self.stage = stage

            self.createdOn = createdOn

            self.addresses = addresses

            self.customJson = customJson

            self.companyType = companyType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            businessType = try container.decode(String.self, forKey: .businessType)

            do {
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

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
                name = try container.decode(String.self, forKey: .name)

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
                verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
                businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyType = try container.decode(String.self, forKey: .companyType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(companyType, forKey: .companyType)
        }
    }
}
