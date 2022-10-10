

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateCompany
         Used By: CompanyProfile
     */

    class UpdateCompany: Codable {
        public var businessInfo: String?

        public var notificationEmails: [String]?

        public var websiteUrl: String?

        public var documents: [Document]?

        public var aboutBusiness: String?

        public var businessDetails: BusinessDetails?

        public var contactDetails: ContactDetails?

        public var addresses: [CreateUpdateAddressSerializer]?

        public var storeName: String?

        public var companyType: String?

        public var annualTurnover: String?

        public enum CodingKeys: String, CodingKey {
            case businessInfo = "business_info"

            case notificationEmails = "notification_emails"

            case websiteUrl = "website_url"

            case documents

            case aboutBusiness = "about_business"

            case businessDetails = "business_details"

            case contactDetails = "contact_details"

            case addresses

            case storeName = "store_name"

            case companyType = "company_type"

            case annualTurnover = "annual_turnover"
        }

        public init(aboutBusiness: String? = nil, addresses: [CreateUpdateAddressSerializer]? = nil, annualTurnover: String? = nil, businessDetails: BusinessDetails? = nil, businessInfo: String? = nil, companyType: String? = nil, contactDetails: ContactDetails? = nil, documents: [Document]? = nil, notificationEmails: [String]? = nil, storeName: String? = nil, websiteUrl: String? = nil) {
            self.businessInfo = businessInfo

            self.notificationEmails = notificationEmails

            self.websiteUrl = websiteUrl

            self.documents = documents

            self.aboutBusiness = aboutBusiness

            self.businessDetails = businessDetails

            self.contactDetails = contactDetails

            self.addresses = addresses

            self.storeName = storeName

            self.companyType = companyType

            self.annualTurnover = annualTurnover
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

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
                websiteUrl = try container.decode(String.self, forKey: .websiteUrl)

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
                aboutBusiness = try container.decode(String.self, forKey: .aboutBusiness)

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
                contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)

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
                storeName = try container.decode(String.self, forKey: .storeName)

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
                annualTurnover = try container.decode(String.self, forKey: .annualTurnover)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(aboutBusiness, forKey: .aboutBusiness)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(addresses, forKey: .addresses)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(annualTurnover, forKey: .annualTurnover)
        }
    }
}
