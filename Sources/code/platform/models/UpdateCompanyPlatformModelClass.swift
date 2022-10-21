

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateCompany
         Used By: CompanyProfile
     */

    class UpdateCompany: Codable {
        public var addresses: [CreateUpdateAddressSerializer]?

        public var customJson: [String: Any]?

        public var warnings: [String: Any]?

        public var businessDetails: BusinessDetails?

        public var franchiseEnabled: Bool?

        public var documents: [Document]?

        public var rejectReason: String?

        public var businessType: String?

        public var contactDetails: ContactDetails?

        public var name: String?

        public var taxes: [CompanyTaxesSerializer1]?

        public var notificationEmails: [String]?

        public var businessInfo: String?

        public var companyType: String?

        public enum CodingKeys: String, CodingKey {
            case addresses

            case customJson = "_custom_json"

            case warnings

            case businessDetails = "business_details"

            case franchiseEnabled = "franchise_enabled"

            case documents

            case rejectReason = "reject_reason"

            case businessType = "business_type"

            case contactDetails = "contact_details"

            case name

            case taxes

            case notificationEmails = "notification_emails"

            case businessInfo = "business_info"

            case companyType = "company_type"
        }

        public init(addresses: [CreateUpdateAddressSerializer]? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String? = nil, companyType: String? = nil, contactDetails: ContactDetails? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, name: String? = nil, notificationEmails: [String]? = nil, rejectReason: String? = nil, taxes: [CompanyTaxesSerializer1]? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.addresses = addresses

            self.customJson = customJson

            self.warnings = warnings

            self.businessDetails = businessDetails

            self.franchiseEnabled = franchiseEnabled

            self.documents = documents

            self.rejectReason = rejectReason

            self.businessType = businessType

            self.contactDetails = contactDetails

            self.name = name

            self.taxes = taxes

            self.notificationEmails = notificationEmails

            self.businessInfo = businessInfo

            self.companyType = companyType
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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)

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
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxes = try container.decode([CompanyTaxesSerializer1].self, forKey: .taxes)

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
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(companyType, forKey: .companyType)
        }
    }
}
