

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleSuccessResponse
         Used By: Serviceability
     */

    class DpRuleSuccessResponse: Codable {
        public var data: DpRule

        public var statusCode: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case statusCode = "status_code"

            case success
        }

        public init(data: DpRule, statusCode: Int, success: Bool) {
            self.data = data

            self.statusCode = statusCode

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(DpRule.self, forKey: .data)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleSuccessResponse
         Used By: Serviceability
     */

    class DpRuleSuccessResponse: Codable {
        public var data: DpRule

        public var statusCode: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case statusCode = "status_code"

            case success
        }

        public init(data: DpRule, statusCode: Int, success: Bool) {
            self.data = data

            self.statusCode = statusCode

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(DpRule.self, forKey: .data)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}