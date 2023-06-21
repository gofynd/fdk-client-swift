

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleSuccessResponse
         Used By: Serviceability
     */

    class DpRuleSuccessResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var data: DpRule

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case data
        }

        public init(data: DpRule, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(DpRule.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleSuccessResponse
         Used By: Serviceability
     */

    class DpRuleSuccessResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var data: DpRule

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case data
        }

        public init(data: DpRule, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(DpRule.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
