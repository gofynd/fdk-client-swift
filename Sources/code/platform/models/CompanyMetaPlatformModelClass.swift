

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyMeta
         Used By: Order
     */

    class CompanyMeta: Codable {
        public var contactDetails: [String: Any]

        public var businessDetails: [String: Any]?

        public var notificationEmails: [String]

        public var stage: String

        public var documents: Documents1

        public var address: [CompanyAddress]

        public var businessInfo: String?

        public enum CodingKeys: String, CodingKey {
            case contactDetails = "contact_details"

            case businessDetails = "business_details"

            case notificationEmails = "notification_emails"

            case stage

            case documents

            case address

            case businessInfo = "business_info"
        }

        public init(address: [CompanyAddress], businessDetails: [String: Any]? = nil, businessInfo: String? = nil, contactDetails: [String: Any], documents: Documents1, notificationEmails: [String], stage: String) {
            self.contactDetails = contactDetails

            self.businessDetails = businessDetails

            self.notificationEmails = notificationEmails

            self.stage = stage

            self.documents = documents

            self.address = address

            self.businessInfo = businessInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)

            do {
                businessDetails = try container.decode([String: Any].self, forKey: .businessDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            stage = try container.decode(String.self, forKey: .stage)

            documents = try container.decode(Documents1.self, forKey: .documents)

            address = try container.decode([CompanyAddress].self, forKey: .address)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
        }
    }
}
