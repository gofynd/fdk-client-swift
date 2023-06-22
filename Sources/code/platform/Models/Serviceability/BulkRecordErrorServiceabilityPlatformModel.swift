

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRecordError
         Used By: Serviceability
     */

    class BulkRecordError: Codable {
        public var isError: Bool

        public var error: [String]

        public enum CodingKeys: String, CodingKey {
            case isError = "is_error"

            case error
        }

        public init(error: [String], isError: Bool) {
            self.isError = isError

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isError = try container.decode(Bool.self, forKey: .isError)

            error = try container.decode([String].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isError, forKey: .isError)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRecordError
         Used By: Serviceability
     */

    class BulkRecordError: Codable {
        public var isError: Bool

        public var error: [String]

        public enum CodingKeys: String, CodingKey {
            case isError = "is_error"

            case error
        }

        public init(error: [String], isError: Bool) {
            self.isError = isError

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isError = try container.decode(Bool.self, forKey: .isError)

            error = try container.decode([String].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isError, forKey: .isError)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
