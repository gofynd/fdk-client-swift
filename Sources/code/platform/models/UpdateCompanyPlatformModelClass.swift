

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateCompany
         Used By: CompanyProfile
     */

    class UpdateCompany: Codable {
        public var notificationEmails: [String]?

        public var addresses: [CreateUpdateAddressSerializer]?

        public var aboutBusiness: String?

        public var documents: [Document]?

        public var compositeTaxation: String?

        public var businessType: String?

        public var companyType: String?

        public var warnings: [String: Any]?

        public var storeName: String?

        public var customJson: [String: Any]?

        public var businessDetails: BusinessDetails?

        public var businessInfo: String?

        public var contactDetails: ContactDetails?

        public var code: String?

        public var franchiseEnabled: Bool?

        public var taxes: [CompanyTaxesSerializer]?

        public var name: String?

        public var annualTurnover: String?

        public var websiteUrl: String?

        public var rejectReason: String?

        public enum CodingKeys: String, CodingKey {
            case notificationEmails = "notification_emails"

            case addresses

            case aboutBusiness = "about_business"

            case documents

            case compositeTaxation = "composite_taxation"

            case businessType = "business_type"

            case companyType = "company_type"

            case warnings

            case storeName = "store_name"

            case customJson = "_custom_json"

            case businessDetails = "business_details"

            case businessInfo = "business_info"

            case contactDetails = "contact_details"

            case code

            case franchiseEnabled = "franchise_enabled"

            case taxes

            case name

            case annualTurnover = "annual_turnover"

            case websiteUrl = "website_url"

            case rejectReason = "reject_reason"
        }

        public init(aboutBusiness: String? = nil, addresses: [CreateUpdateAddressSerializer]? = nil, annualTurnover: String? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String? = nil, code: String? = nil, companyType: String? = nil, compositeTaxation: String? = nil, contactDetails: ContactDetails? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, name: String? = nil, notificationEmails: [String]? = nil, rejectReason: String? = nil, storeName: String? = nil, taxes: [CompanyTaxesSerializer]? = nil, warnings: [String: Any]? = nil, websiteUrl: String? = nil, customJson: [String: Any]? = nil) {
            self.notificationEmails = notificationEmails

            self.addresses = addresses

            self.aboutBusiness = aboutBusiness

            self.documents = documents

            self.compositeTaxation = compositeTaxation

            self.businessType = businessType

            self.companyType = companyType

            self.warnings = warnings

            self.storeName = storeName

            self.customJson = customJson

            self.businessDetails = businessDetails

            self.businessInfo = businessInfo

            self.contactDetails = contactDetails

            self.code = code

            self.franchiseEnabled = franchiseEnabled

            self.taxes = taxes

            self.name = name

            self.annualTurnover = annualTurnover

            self.websiteUrl = websiteUrl

            self.rejectReason = rejectReason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addresses = try container.decode([CreateUpdateAddressSerializer].self, forKey: .addresses)

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
                documents = try container.decode([Document].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                compositeTaxation = try container.decode(String.self, forKey: .compositeTaxation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                websiteUrl = try container.decode(String.self, forKey: .websiteUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(aboutBusiness, forKey: .aboutBusiness)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(compositeTaxation, forKey: .compositeTaxation)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(annualTurnover, forKey: .annualTurnover)

            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
        }
    }
}
