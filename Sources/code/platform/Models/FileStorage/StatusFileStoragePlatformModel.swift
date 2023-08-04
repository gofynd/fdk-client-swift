

import Foundation

public extension PlatformClient.FileStorage {
    /*
         Model: Status
         Used By: FileStorage
     */

    class Status: Codable {
        public var total: Double

        public var failed: Double

        public var succeeded: Double

        public var result: String?

        public enum CodingKeys: String, CodingKey {
            case total

            case failed

            case succeeded

            case result
        }

        public init(failed: Double, result: String? = nil, succeeded: Double, total: Double) {
            self.total = total

            self.failed = failed

            self.succeeded = succeeded

            self.result = result
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            total = try container.decode(Double.self, forKey: .total)

            failed = try container.decode(Double.self, forKey: .failed)

            succeeded = try container.decode(Double.self, forKey: .succeeded)

            do {
                result = try container.decode(String.self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(succeeded, forKey: .succeeded)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}

public extension PlatformClient.ApplicationClient.FileStorage {
    /*
         Model: Status
         Used By: FileStorage
     */

    class Status: Codable {
        public var total: Double

        public var failed: Double

        public var succeeded: Double

        public var result: String?

        public enum CodingKeys: String, CodingKey {
            case total

            case failed

            case succeeded

            case result
        }

        public init(failed: Double, result: String? = nil, succeeded: Double, total: Double) {
            self.total = total

            self.failed = failed

            self.succeeded = succeeded

            self.result = result
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            total = try container.decode(Double.self, forKey: .total)

            failed = try container.decode(Double.self, forKey: .failed)

            succeeded = try container.decode(Double.self, forKey: .succeeded)

            do {
                result = try container.decode(String.self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(succeeded, forKey: .succeeded)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}
