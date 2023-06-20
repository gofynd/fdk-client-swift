

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var excludedFields: [String]

        public var appId: String

        public var success: Bool

        public var created: Bool

        public var aggregators: [[String: Any]]?

        public var displayFields: [String]

        public enum CodingKeys: String, CodingKey {
            case excludedFields = "excluded_fields"

            case appId = "app_id"

            case success

            case created

            case aggregators

            case displayFields = "display_fields"
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.excludedFields = excludedFields

            self.appId = appId

            self.success = success

            self.created = created

            self.aggregators = aggregators

            self.displayFields = displayFields
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            appId = try container.decode(String.self, forKey: .appId)

            success = try container.decode(Bool.self, forKey: .success)

            created = try container.decode(Bool.self, forKey: .created)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayFields = try container.decode([String].self, forKey: .displayFields)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var excludedFields: [String]

        public var appId: String

        public var success: Bool

        public var created: Bool

        public var aggregators: [[String: Any]]?

        public var displayFields: [String]

        public enum CodingKeys: String, CodingKey {
            case excludedFields = "excluded_fields"

            case appId = "app_id"

            case success

            case created

            case aggregators

            case displayFields = "display_fields"
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.excludedFields = excludedFields

            self.appId = appId

            self.success = success

            self.created = created

            self.aggregators = aggregators

            self.displayFields = displayFields
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            appId = try container.decode(String.self, forKey: .appId)

            success = try container.decode(Bool.self, forKey: .success)

            created = try container.decode(Bool.self, forKey: .created)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayFields = try container.decode([String].self, forKey: .displayFields)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
        }
    }
}
