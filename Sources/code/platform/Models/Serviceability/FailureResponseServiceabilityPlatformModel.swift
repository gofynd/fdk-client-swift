

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: FailureResponse
         Used By: Serviceability
     */

    class FailureResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public var error: [ErrorResponse]

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case error
        }

        public init(error: [ErrorResponse], statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            error = try container.decode([ErrorResponse].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: FailureResponse
         Used By: Serviceability
     */

    class FailureResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public var error: [ErrorResponse]

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case error
        }

        public init(error: [ErrorResponse], statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            error = try container.decode([ErrorResponse].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
