

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DPApplicationRuleResponse
         Used By: Serviceability
     */

    class DPApplicationRuleResponse: Codable {
        public var success: Bool

        public var statusCode: Bool

        public var data: [DpRuleResponse]

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case data
        }

        public init(data: [DpRuleResponse], statusCode: Bool, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Bool.self, forKey: .statusCode)

            data = try container.decode([DpRuleResponse].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DPApplicationRuleResponse
         Used By: Serviceability
     */

    class DPApplicationRuleResponse: Codable {
        public var success: Bool

        public var statusCode: Bool

        public var data: [DpRuleResponse]

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case data
        }

        public init(data: [DpRuleResponse], statusCode: Bool, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Bool.self, forKey: .statusCode)

            data = try container.decode([DpRuleResponse].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
