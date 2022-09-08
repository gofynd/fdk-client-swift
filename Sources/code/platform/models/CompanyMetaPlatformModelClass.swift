

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyMeta
         Used By: Order
     */

    class CompanyMeta: Codable {
        public var businessInfo: String?

        public var documents: Documents1

        public var businessDetails: [String: Any]?

        public var stage: String

        public var address: [CompanyAddress]

        public var notificationEmails: [String]

        public var contactDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case businessInfo = "business_info"

            case documents

            case businessDetails = "business_details"

            case stage

            case address

            case notificationEmails = "notification_emails"

            case contactDetails = "contact_details"
        }

        public init(address: [CompanyAddress], businessDetails: [String: Any]? = nil, businessInfo: String? = nil, contactDetails: [String: Any], documents: Documents1, notificationEmails: [String], stage: String) {
            self.businessInfo = businessInfo

            self.documents = documents

            self.businessDetails = businessDetails

            self.stage = stage

            self.address = address

            self.notificationEmails = notificationEmails

            self.contactDetails = contactDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            documents = try container.decode(Documents1.self, forKey: .documents)

            do {
                businessDetails = try container.decode([String: Any].self, forKey: .businessDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            address = try container.decode([CompanyAddress].self, forKey: .address)

            notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
        }
    }
}
