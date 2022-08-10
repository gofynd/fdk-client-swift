

import Foundation
public extension PlatformClient {
    /*
         Model: SlingshotConfigurationDetail
         Used By: Inventory
     */

    class SlingshotConfigurationDetail: Codable {
        public var integration: SlingshotIntegration?

        public var companies: [GCompany]?

        public enum CodingKeys: String, CodingKey {
            case integration

            case companies
        }

        public init(companies: [GCompany]? = nil, integration: SlingshotIntegration? = nil) {
            self.integration = integration

            self.companies = companies
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                integration = try container.decode(SlingshotIntegration.self, forKey: .integration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companies = try container.decode([GCompany].self, forKey: .companies)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(integration, forKey: .integration)

            try? container.encodeIfPresent(companies, forKey: .companies)
        }
    }
}
