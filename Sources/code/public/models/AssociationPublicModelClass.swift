

import Foundation
public extension PublicClient {
    /*
         Model: Association
         Used By: Webhook
     */

    class Association: Codable {
        public var companyId: Int?

        public var applicationId: [String]?

        public var extensionId: String?

        public var criteria: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case applicationId = "application_id"

            case extensionId = "extension_id"

            case criteria
        }

        public init(applicationId: [String]? = nil, companyId: Int? = nil, criteria: String? = nil, extensionId: String? = nil) {
            self.companyId = companyId

            self.applicationId = applicationId

            self.extensionId = extensionId

            self.criteria = criteria
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode([String].self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                extensionId = try container.decode(String.self, forKey: .extensionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(extensionId, forKey: .extensionId)

            try? container.encodeIfPresent(criteria, forKey: .criteria)
        }
    }
}
