

import Foundation
public extension PlatformClient {
    /*
         Model: TicketContext
         Used By: Lead
     */

    class TicketContext: Codable {
        public var applicationId: String?

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case companyId = "company_id"
        }

        public init(applicationId: String? = nil, companyId: String) {
            self.applicationId = applicationId

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
