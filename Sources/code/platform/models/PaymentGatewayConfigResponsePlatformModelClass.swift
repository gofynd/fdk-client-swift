

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var displayFields: [String]

        public var appId: String

        public var created: Bool

        public var excludedFields: [String]

        public var success: Bool

        public var aggregators: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case displayFields = "display_fields"

            case appId = "app_id"

            case created

            case excludedFields = "excluded_fields"

            case success

            case aggregators
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.displayFields = displayFields

            self.appId = appId

            self.created = created

            self.excludedFields = excludedFields

            self.success = success

            self.aggregators = aggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            appId = try container.decode(String.self, forKey: .appId)

            created = try container.decode(Bool.self, forKey: .created)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
        }
    }
}
