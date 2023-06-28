

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: BulkRecordError
         Used By: Serviceability
     */

    class BulkRecordError: Codable {
        public var error: [String]

        public var isError: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case isError = "is_error"
        }

        public init(error: [String], isError: Bool) {
            self.error = error

            self.isError = isError
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode([String].self, forKey: .error)

            isError = try container.decode(Bool.self, forKey: .isError)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(isError, forKey: .isError)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: BulkRecordError
         Used By: Serviceability
     */

    class BulkRecordError: Codable {
        public var error: [String]

        public var isError: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case isError = "is_error"
        }

        public init(error: [String], isError: Bool) {
            self.error = error

            self.isError = isError
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode([String].self, forKey: .error)

            isError = try container.decode(Bool.self, forKey: .isError)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(isError, forKey: .isError)
        }
    }
}
