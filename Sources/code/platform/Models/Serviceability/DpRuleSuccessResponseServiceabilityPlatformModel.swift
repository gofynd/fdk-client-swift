

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleSuccessResponse
         Used By: Serviceability
     */

    class DpRuleSuccessResponse: Codable {
        public var statusCode: Int

        public var data: DpRuleResponse

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case data

            case success
        }

        public init(data: DpRuleResponse, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            data = try container.decode(DpRuleResponse.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(data, forKey: .data)

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
        public var statusCode: Int

        public var data: DpRuleResponse

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case data

            case success
        }

        public init(data: DpRuleResponse, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            data = try container.decode(DpRuleResponse.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
