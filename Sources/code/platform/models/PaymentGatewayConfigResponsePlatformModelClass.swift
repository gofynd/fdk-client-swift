

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var appId: String

        public var displayFields: [String]

        public var success: Bool

        public var excludedFields: [String]

        public var created: Bool

        public var aggregators: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case displayFields = "display_fields"

            case success

            case excludedFields = "excluded_fields"

            case created

            case aggregators
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.appId = appId

            self.displayFields = displayFields

            self.success = success

            self.excludedFields = excludedFields

            self.created = created

            self.aggregators = aggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            success = try container.decode(Bool.self, forKey: .success)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            created = try container.decode(Bool.self, forKey: .created)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
        }
    }
}
