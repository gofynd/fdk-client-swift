

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateCompany
         Used By: CompanyProfile
     */

    class UpdateCompany: Codable {
        public var businessType: String?

        public var notificationEmails: [String]?

        public var businessInfo: String?

        public var contactDetails: ContactDetails?

        public var businessDetails: BusinessDetails?

        public var franchiseEnabled: Bool?

        public var warnings: [String: Any]?

        public var documents: [Document]?

        public var customJson: [String: Any]?

        public var companyType: String?

        public var rejectReason: String?

        public var addresses: [CreateUpdateAddressSerializer]?

        public var taxes: [CompanyTaxesSerializer1]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case businessType = "business_type"

            case notificationEmails = "notification_emails"

            case businessInfo = "business_info"

            case contactDetails = "contact_details"

            case businessDetails = "business_details"

            case franchiseEnabled = "franchise_enabled"

            case warnings

            case documents

            case customJson = "_custom_json"

            case companyType = "company_type"

            case rejectReason = "reject_reason"

            case addresses

            case taxes

            case name
        }

        public init(addresses: [CreateUpdateAddressSerializer]? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, businessType: String? = nil, companyType: String? = nil, contactDetails: ContactDetails? = nil, documents: [Document]? = nil, franchiseEnabled: Bool? = nil, name: String? = nil, notificationEmails: [String]? = nil, rejectReason: String? = nil, taxes: [CompanyTaxesSerializer1]? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.businessType = businessType

            self.notificationEmails = notificationEmails

            self.businessInfo = businessInfo

            self.contactDetails = contactDetails

            self.businessDetails = businessDetails

            self.franchiseEnabled = franchiseEnabled

            self.warnings = warnings

            self.documents = documents

            self.customJson = customJson

            self.companyType = companyType

            self.rejectReason = rejectReason

            self.addresses = addresses

            self.taxes = taxes

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

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
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                rejectReason = try container.decode(String.self, forKey: .rejectReason)

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
                taxes = try container.decode([CompanyTaxesSerializer1].self, forKey: .taxes)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
