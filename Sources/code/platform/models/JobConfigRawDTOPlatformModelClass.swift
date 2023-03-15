

import Foundation
public extension PlatformClient {
    /*
         Model: JobConfigRawDTO
         Used By: Inventory
     */

    class JobConfigRawDTO: Codable {
        public var companyName: String

        public var integration: String

        public var companyId: Int

        public var data: JobConfig?

        public enum CodingKeys: String, CodingKey {
            case companyName = "company_name"

            case integration

            case companyId = "company_id"

            case data
        }

        public init(companyId: Int, companyName: String, data: JobConfig? = nil, integration: String) {
            self.companyName = companyName

            self.integration = integration

            self.companyId = companyId

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyName = try container.decode(String.self, forKey: .companyName)

            integration = try container.decode(String.self, forKey: .integration)

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

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(integration, forKey: .integration)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
