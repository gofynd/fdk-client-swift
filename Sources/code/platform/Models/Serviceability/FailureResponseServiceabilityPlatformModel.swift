

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: FailureResponse
         Used By: Serviceability
     */

    class FailureResponse: Codable {
        public var success: Bool

        public var error: [ErrorResponse1]

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case statusCode = "status_code"
        }

        public init(error: [ErrorResponse1], statusCode: Int, success: Bool) {
            self.success = success

            self.error = error

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode([ErrorResponse1].self, forKey: .error)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

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
        public var success: Bool

        public var error: [ErrorResponse1]

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case statusCode = "status_code"
        }

        public init(error: [ErrorResponse1], statusCode: Int, success: Bool) {
            self.success = success

            self.error = error

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode([ErrorResponse1].self, forKey: .error)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
