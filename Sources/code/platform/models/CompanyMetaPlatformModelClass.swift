

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyMeta
         Used By: Order
     */

    class CompanyMeta: Codable {
        public var notificationEmails: [String]

        public var businessDetails: [String: Any]?

        public var stage: String

        public var contactDetails: [String: Any]

        public var address: [CompanyAddress]

        public var documents: Documents1

        public var businessInfo: String?

        public enum CodingKeys: String, CodingKey {
            case notificationEmails = "notification_emails"

            case businessDetails = "business_details"

            case stage

            case contactDetails = "contact_details"

            case address

            case documents

            case businessInfo = "business_info"
        }

        public init(address: [CompanyAddress], businessDetails: [String: Any]? = nil, businessInfo: String? = nil, contactDetails: [String: Any], documents: Documents1, notificationEmails: [String], stage: String) {
            self.notificationEmails = notificationEmails

            self.businessDetails = businessDetails

            self.stage = stage

            self.contactDetails = contactDetails

            self.address = address

            self.documents = documents

            self.businessInfo = businessInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            do {
                businessDetails = try container.decode([String: Any].self, forKey: .businessDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)

            address = try container.decode([CompanyAddress].self, forKey: .address)

            documents = try container.decode(Documents1.self, forKey: .documents)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
        }
    }
}
