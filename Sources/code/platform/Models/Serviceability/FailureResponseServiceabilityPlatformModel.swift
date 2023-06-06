

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: FailureResponse
         Used By: Serviceability
     */

    class FailureResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var error: [ErrorResponse1]

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case error
        }

        public init(error: [ErrorResponse1], statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.success = success

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode([ErrorResponse1].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

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
        public var statusCode: Int

        public var success: Bool

        public var error: [ErrorResponse1]

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case error
        }

        public init(error: [ErrorResponse1], statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.success = success

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode([ErrorResponse1].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
