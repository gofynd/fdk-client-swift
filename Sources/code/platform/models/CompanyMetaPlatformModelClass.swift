

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyMeta
         Used By: Order
     */

    class CompanyMeta: Codable {
        public var contactDetails: [String: Any]

        public var documents: Documents1

        public var stage: String

        public var businessInfo: String?

        public var notificationEmails: [String]

        public var businessDetails: [String: Any]?

        public var address: [CompanyAddress]

        public enum CodingKeys: String, CodingKey {
            case contactDetails = "contact_details"

            case documents

            case stage

            case businessInfo = "business_info"

            case notificationEmails = "notification_emails"

            case businessDetails = "business_details"

            case address
        }

        public init(address: [CompanyAddress], businessDetails: [String: Any]? = nil, businessInfo: String? = nil, contactDetails: [String: Any], documents: Documents1, notificationEmails: [String], stage: String) {
            self.contactDetails = contactDetails

            self.documents = documents

            self.stage = stage

            self.businessInfo = businessInfo

            self.notificationEmails = notificationEmails

            self.businessDetails = businessDetails

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)

            documents = try container.decode(Documents1.self, forKey: .documents)

            stage = try container.decode(String.self, forKey: .stage)

            do {
                businessInfo = try container.decode(String.self, forKey: .businessInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            do {
                businessDetails = try container.decode([String: Any].self, forKey: .businessDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode([CompanyAddress].self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
