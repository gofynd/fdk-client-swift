

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DPApplicationRuleResponse
         Used By: Serviceability
     */

    class DPApplicationRuleResponse: Codable {
        public var data: [DpRuleResponse]

        public var success: Bool

        public var statusCode: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case statusCode = "status_code"
        }

        public init(data: [DpRuleResponse], statusCode: Bool, success: Bool) {
            self.data = data

            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([DpRuleResponse].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Bool.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DPApplicationRuleResponse
         Used By: Serviceability
     */

    class DPApplicationRuleResponse: Codable {
        public var data: [DpRuleResponse]

        public var success: Bool

        public var statusCode: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case statusCode = "status_code"
        }

        public init(data: [DpRuleResponse], statusCode: Bool, success: Bool) {
            self.data = data

            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([DpRuleResponse].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Bool.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
