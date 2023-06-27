

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleSuccessResponse
         Used By: Serviceability
     */

    class DpRuleSuccessResponse: Codable {
        public var success: Bool

        public var data: DpRule

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case statusCode = "status_code"
        }

        public init(data: DpRule, statusCode: Int, success: Bool) {
            self.success = success

            self.data = data

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(DpRule.self, forKey: .data)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleSuccessResponse
         Used By: Serviceability
     */

    class DpRuleSuccessResponse: Codable {
        public var success: Bool

        public var data: DpRule

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case statusCode = "status_code"
        }

        public init(data: DpRule, statusCode: Int, success: Bool) {
            self.success = success

            self.data = data

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(DpRule.self, forKey: .data)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
