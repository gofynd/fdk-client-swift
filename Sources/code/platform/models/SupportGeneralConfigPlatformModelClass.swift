

import Foundation
public extension PlatformClient {
    /*
         Model: SupportGeneralConfig
         Used By: Lead
     */

    class SupportGeneralConfig: Codable {
        public var id: String?

        public var supportEmail: CommunicationDetails?

        public var supportPhone: CommunicationDetails?

        public var supportFaq: CommunicationDetails?

        public var showCommunicationInfo: Bool?

        public var showSupportDris: Bool?

        public var integration: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case supportEmail = "support_email"

            case supportPhone = "support_phone"

            case supportFaq = "support_faq"

            case showCommunicationInfo = "show_communication_info"

            case showSupportDris = "show_support_dris"

            case integration
        }

        public init(integration: [String: Any]? = nil, showCommunicationInfo: Bool? = nil, showSupportDris: Bool? = nil, supportEmail: CommunicationDetails? = nil, supportFaq: CommunicationDetails? = nil, supportPhone: CommunicationDetails? = nil, id: String? = nil) {
            self.id = id

            self.supportEmail = supportEmail

            self.supportPhone = supportPhone

            self.supportFaq = supportFaq

            self.showCommunicationInfo = showCommunicationInfo

            self.showSupportDris = showSupportDris

            self.integration = integration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                supportEmail = try container.decode(CommunicationDetails.self, forKey: .supportEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                supportPhone = try container.decode(CommunicationDetails.self, forKey: .supportPhone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                supportFaq = try container.decode(CommunicationDetails.self, forKey: .supportFaq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showCommunicationInfo = try container.decode(Bool.self, forKey: .showCommunicationInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showSupportDris = try container.decode(Bool.self, forKey: .showSupportDris)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integration = try container.decode([String: Any].self, forKey: .integration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(supportEmail, forKey: .supportEmail)

            try? container.encodeIfPresent(supportPhone, forKey: .supportPhone)

            try? container.encodeIfPresent(supportFaq, forKey: .supportFaq)

            try? container.encodeIfPresent(showCommunicationInfo, forKey: .showCommunicationInfo)

            try? container.encodeIfPresent(showSupportDris, forKey: .showSupportDris)

            try? container.encodeIfPresent(integration, forKey: .integration)
        }
    }
}
