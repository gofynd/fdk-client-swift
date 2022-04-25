

import Foundation
public extension PlatformClient {
    /*
         Model: AWSS3config
         Used By: Inventory
     */

    class AWSS3config: Codable {
        public var bucket: String?

        public var region: String?

        public var dir: String?

        public var accessKey: String?

        public var secretKey: String?

        public var localFilePath: String?

        public var archivePath: String?

        public var archive: Bool?

        public var delete: Bool?

        public var unzip: Bool?

        public var zipFormat: String?

        public var fileRegex: String?

        public var archiveConfig: ArchiveConfig?

        public enum CodingKeys: String, CodingKey {
            case bucket

            case region

            case dir

            case accessKey = "access_key"

            case secretKey = "secret_key"

            case localFilePath = "local_file_path"

            case archivePath = "archive_path"

            case archive

            case delete

            case unzip

            case zipFormat = "zip_format"

            case fileRegex = "file_regex"

            case archiveConfig = "archive_config"
        }

        public init(accessKey: String? = nil, archive: Bool? = nil, archiveConfig: ArchiveConfig? = nil, archivePath: String? = nil, bucket: String? = nil, delete: Bool? = nil, dir: String? = nil, fileRegex: String? = nil, localFilePath: String? = nil, region: String? = nil, secretKey: String? = nil, unzip: Bool? = nil, zipFormat: String? = nil) {
            self.bucket = bucket

            self.region = region

            self.dir = dir

            self.accessKey = accessKey

            self.secretKey = secretKey

            self.localFilePath = localFilePath

            self.archivePath = archivePath

            self.archive = archive

            self.delete = delete

            self.unzip = unzip

            self.zipFormat = zipFormat

            self.fileRegex = fileRegex

            self.archiveConfig = archiveConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bucket = try container.decode(String.self, forKey: .bucket)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                region = try container.decode(String.self, forKey: .region)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dir = try container.decode(String.self, forKey: .dir)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accessKey = try container.decode(String.self, forKey: .accessKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secretKey = try container.decode(String.self, forKey: .secretKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localFilePath = try container.decode(String.self, forKey: .localFilePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archivePath = try container.decode(String.self, forKey: .archivePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delete = try container.decode(Bool.self, forKey: .delete)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unzip = try container.decode(Bool.self, forKey: .unzip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                zipFormat = try container.decode(String.self, forKey: .zipFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileRegex = try container.decode(String.self, forKey: .fileRegex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archiveConfig = try container.decode(ArchiveConfig.self, forKey: .archiveConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bucket, forKey: .bucket)

            try? container.encodeIfPresent(region, forKey: .region)

            try? container.encodeIfPresent(dir, forKey: .dir)

            try? container.encodeIfPresent(accessKey, forKey: .accessKey)

            try? container.encodeIfPresent(secretKey, forKey: .secretKey)

            try? container.encodeIfPresent(localFilePath, forKey: .localFilePath)

            try? container.encodeIfPresent(archivePath, forKey: .archivePath)

            try? container.encodeIfPresent(archive, forKey: .archive)

            try? container.encodeIfPresent(delete, forKey: .delete)

            try? container.encodeIfPresent(unzip, forKey: .unzip)

            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)

            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)

            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
        }
    }
}
