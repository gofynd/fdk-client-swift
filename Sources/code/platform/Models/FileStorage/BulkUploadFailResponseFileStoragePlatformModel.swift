

import Foundation

public extension PlatformClient.FileStorage {
    /*
         Model: BulkUploadFailResponse
         Used By: FileStorage
     */

    class BulkUploadFailResponse: Codable {
        public var status: Status

        public var files: [BulkUploadFailFileResponseItems]

        public enum CodingKeys: String, CodingKey {
            case status

            case files
        }

        public init(files: [BulkUploadFailFileResponseItems], status: Status) {
            self.status = status

            self.files = files
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Status.self, forKey: .status)

            files = try container.decode([BulkUploadFailFileResponseItems].self, forKey: .files)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(files, forKey: .files)
        }
    }
}

public extension PlatformClient.ApplicationClient.FileStorage {
    /*
         Model: BulkUploadFailResponse
         Used By: FileStorage
     */

    class BulkUploadFailResponse: Codable {
        public var status: Status

        public var files: [BulkUploadFailFileResponseItems]

        public enum CodingKeys: String, CodingKey {
            case status

            case files
        }

        public init(files: [BulkUploadFailFileResponseItems], status: Status) {
            self.status = status

            self.files = files
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Status.self, forKey: .status)

            files = try container.decode([BulkUploadFailFileResponseItems].self, forKey: .files)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(files, forKey: .files)
        }
    }
}
