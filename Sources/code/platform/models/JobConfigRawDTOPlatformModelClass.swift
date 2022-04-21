

import Foundation
public extension PlatformClient {
    /*
         Model: JobConfigRawDTO
         Used By: Inventory
     */

    class JobConfigRawDTO: Codable {
        public var integration: String

        public var companyName: String

        public var companyId: Int

        public var data: JobConfig?

        public enum CodingKeys: String, CodingKey {
            case integration

            case companyName = "company_name"

            case companyId = "company_id"

            case data
        }

        public init(companyId: Int, companyName: String, data: JobConfig? = nil, integration: String) {
            self.integration = integration

            self.companyName = companyName

            self.companyId = companyId

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            integration = try container.decode(String.self, forKey: .integration)

            companyName = try container.decode(String.self, forKey: .companyName)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                data = try container.decode(JobConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(integration, forKey: .integration)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
