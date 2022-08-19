

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyMeta
         Used By: Order
     */

    class CompanyMeta: Codable {
        public var contactDetails: [String: Any]

        public var address: [CompanyAddress]

        public var businessDetails: [String: Any]?

        public var documents: Documents1

        public var businessInfo: String?

        public var stage: String

        public var notificationEmails: [String]

        public enum CodingKeys: String, CodingKey {
            case contactDetails = "contact_details"

            case address

            case businessDetails = "business_details"

            case documents

            case businessInfo = "business_info"

            case stage

            case notificationEmails = "notification_emails"
        }

        public init(address: [CompanyAddress], businessDetails: [String: Any]? = nil, businessInfo: String? = nil, contactDetails: [String: Any], documents: Documents1, notificationEmails: [String], stage: String) {
            self.contactDetails = contactDetails

            self.address = address

            self.businessDetails = businessDetails

            self.documents = documents

            self.businessInfo = businessInfo

            self.stage = stage

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)

            address = try container.decode([CompanyAddress].self, forKey: .address)

            do {
                businessDetails = try container.decode([String: Any].self, forKey: .businessDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            documents = try container.decode(Documents1.self, forKey: .documents)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}
