

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyMeta
         Used By: Order
     */

    class CompanyMeta: Codable {
        public var businessInfo: String?

        public var notificationEmails: [String]

        public var contactDetails: [String: Any]

        public var businessDetails: [String: Any]?

        public var address: [CompanyAddress]

        public var stage: String

        public var documents: Documents1

        public enum CodingKeys: String, CodingKey {
            case businessInfo = "business_info"

            case notificationEmails = "notification_emails"

            case contactDetails = "contact_details"

            case businessDetails = "business_details"

            case address

            case stage

            case documents
        }

        public init(address: [CompanyAddress], businessDetails: [String: Any]? = nil, businessInfo: String? = nil, contactDetails: [String: Any], documents: Documents1, notificationEmails: [String], stage: String) {
            self.businessInfo = businessInfo

            self.notificationEmails = notificationEmails

            self.contactDetails = contactDetails

            self.businessDetails = businessDetails

            self.address = address

            self.stage = stage

            self.documents = documents
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)

            do {
                businessDetails = try container.decode([String: Any].self, forKey: .businessDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode([CompanyAddress].self, forKey: .address)

            stage = try container.decode(String.self, forKey: .stage)

            documents = try container.decode(Documents1.self, forKey: .documents)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(documents, forKey: .documents)
        }
    }
}
