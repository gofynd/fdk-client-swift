

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var excludedFields: [String]

        public var created: Bool

        public var displayFields: [String]

        public var success: Bool

        public var aggregators: [[String: Any]]?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case excludedFields = "excluded_fields"

            case created

            case displayFields = "display_fields"

            case success

            case aggregators

            case appId = "app_id"
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.excludedFields = excludedFields

            self.created = created

            self.displayFields = displayFields

            self.success = success

            self.aggregators = aggregators

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            created = try container.decode(Bool.self, forKey: .created)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)

            try? container.encodeIfPresent(appId, forKey: .appId)
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

        public var created: Bool

        public var displayFields: [String]

        public var success: Bool

        public var aggregators: [[String: Any]]?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case excludedFields = "excluded_fields"

            case created

            case displayFields = "display_fields"

            case success

            case aggregators

            case appId = "app_id"
        }

        public init(aggregators: [[String: Any]]? = nil, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.excludedFields = excludedFields

            self.created = created

            self.displayFields = displayFields

            self.success = success

            self.aggregators = aggregators

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            excludedFields = try container.decode([String].self, forKey: .excludedFields)

            created = try container.decode(Bool.self, forKey: .created)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
