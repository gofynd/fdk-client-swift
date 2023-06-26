

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: FailureResponse
         Used By: Serviceability
     */

    class FailureResponse: Codable {
        public var error: [ErrorResponse]

        public var success: Bool

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case error

            case success

            case statusCode = "status_code"
        }

        public init(error: [ErrorResponse], statusCode: Int, success: Bool) {
            self.error = error

            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode([ErrorResponse].self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: FailureResponse
         Used By: Serviceability
     */

    class FailureResponse: Codable {
        public var error: [ErrorResponse]

        public var success: Bool

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case error

            case success

            case statusCode = "status_code"
        }

        public init(error: [ErrorResponse], statusCode: Int, success: Bool) {
            self.error = error

            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode([ErrorResponse].self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
