

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateCompany
         Used By: CompanyProfile
     */

    class UpdateCompany: Codable {
        public var addresses: [CreateUpdateAddressSerializer]?

        public var aboutBusiness: String?

        public var annualTurnover: String?

        public var documents: [Document]?

        public var businessInfo: String?

        public var companyType: String?

        public var notificationEmails: [String]?

        public var businessDetails: BusinessDetails?

        public var compositeTaxation: String?

        public var websiteUrl: String?

        public var name: String?

        public var customJson: [String: Any]?

        public var franchiseEnabled: Bool?

        public var businessType: String?

        public var contactDetails: ContactDetails?

        public var rejectReason: String?

        public var taxes: [CompanyTaxesSerializer]?

        public var warnings: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case addresses

            case aboutBusiness = "about_business"

            case annualTurnover = "annual_turnover"

            case documents

            case businessInfo = "business_info"

            case companyType = "company_type"

            case notificationEmails = "notification_emails"

            case businessDetails = "business_details"

            case compositeTaxation = "composite_taxation"

            case websiteUrl = "website_url"

            case name

            case customJson = "_custom_json"

            case franchiseEnabled = "franchise_enabled"

            case businessType = "business_type"

            case contactDetails = "contact_details"

            case rejectReason = "reject_reason"

            case taxes

            case warnings
        }

        public init(aboutBusiness: String? = nil, addresses: [CreateUpdateAddressSerializer]? = nil, annualTurnover: String? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String? = nil, companyType: String? = nil, compositeTaxation: String? = nil, contactDetails: ContactDetails? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, name: String? = nil, notificationEmails: [String]? = nil, rejectReason: String? = nil, taxes: [CompanyTaxesSerializer]? = nil, warnings: [String: Any]? = nil, websiteUrl: String? = nil, customJson: [String: Any]? = nil) {
            self.addresses = addresses

            self.aboutBusiness = aboutBusiness

            self.annualTurnover = annualTurnover

            self.documents = documents

            self.businessInfo = businessInfo

            self.companyType = companyType

            self.notificationEmails = notificationEmails

            self.businessDetails = businessDetails

            self.compositeTaxation = compositeTaxation

            self.websiteUrl = websiteUrl

            self.name = name

            self.customJson = customJson

            self.franchiseEnabled = franchiseEnabled

            self.businessType = businessType

            self.contactDetails = contactDetails

            self.rejectReason = rejectReason

            self.taxes = taxes

            self.warnings = warnings
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                annualTurnover = try container.decode(String.self, forKey: .annualTurnover)

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
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

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
                compositeTaxation = try container.decode(String.self, forKey: .compositeTaxation)

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
                name = try container.decode(String.self, forKey: .name)

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
                franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)

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
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(aboutBusiness, forKey: .aboutBusiness)

            try? container.encodeIfPresent(annualTurnover, forKey: .annualTurnover)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(compositeTaxation, forKey: .compositeTaxation)

            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(warnings, forKey: .warnings)
        }
    }
}
