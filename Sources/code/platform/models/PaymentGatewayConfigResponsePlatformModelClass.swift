

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var displayFields: [String]

        public var aggregators: [[String: Any]]?

        public var success: Bool

        public var created: Bool

        public var excludedFields: [String]

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case displayFields = "display_fields"

            case aggregators

            case success

            case created

            case excludedFields = "excluded_fields"

            case appId = "app_id"
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.displayFields = displayFields

            self.aggregators = aggregators

            self.success = success

            self.created = created

            self.excludedFields = excludedFields

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            created = try container.decode(Bool.self, forKey: .created)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
