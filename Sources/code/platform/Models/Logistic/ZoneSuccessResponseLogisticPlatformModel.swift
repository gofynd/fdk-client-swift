

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ZoneSuccessResponse
         Used By: Logistic
     */

    class ZoneSuccessResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"
        }

        public init(statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ZoneSuccessResponse
         Used By: Logistic
     */

    class ZoneSuccessResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"
        }

        public init(statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
