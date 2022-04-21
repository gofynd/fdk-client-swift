

import Foundation
public extension PlatformClient {
    /*
         Model: LocalFileConfig
         Used By: Inventory
     */

    class LocalFileConfig: Codable {
        public var retries: Int?

        public var interval: Int?

        public var localDir: String?

        public var workingDir: String?

        public var unzip: Bool?

        public var zipFileRegex: String?

        public var fileRegex: String?

        public var zipFormat: String?

        public var archiveConfig: ArchiveConfig?

        public var readAllFiles: Bool?

        public enum CodingKeys: String, CodingKey {
            case retries

            case interval

            case localDir = "local_dir"

            case workingDir = "working_dir"

            case unzip

            case zipFileRegex = "zip_file_regex"

            case fileRegex = "file_regex"

            case zipFormat = "zip_format"

            case archiveConfig = "archive_config"

            case readAllFiles = "read_all_files"
        }

        public init(archiveConfig: ArchiveConfig? = nil, fileRegex: String? = nil, interval: Int? = nil, localDir: String? = nil, readAllFiles: Bool? = nil, retries: Int? = nil, unzip: Bool? = nil, workingDir: String? = nil, zipFileRegex: String? = nil, zipFormat: String? = nil) {
            self.retries = retries

            self.interval = interval

            self.localDir = localDir

            self.workingDir = workingDir

            self.unzip = unzip

            self.zipFileRegex = zipFileRegex

            self.fileRegex = fileRegex

            self.zipFormat = zipFormat

            self.archiveConfig = archiveConfig

            self.readAllFiles = readAllFiles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                retries = try container.decode(Int.self, forKey: .retries)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                interval = try container.decode(Int.self, forKey: .interval)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localDir = try container.decode(String.self, forKey: .localDir)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                workingDir = try container.decode(String.self, forKey: .workingDir)

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
                zipFileRegex = try container.decode(String.self, forKey: .zipFileRegex)

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
                zipFormat = try container.decode(String.self, forKey: .zipFormat)

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

            do {
                readAllFiles = try container.decode(Bool.self, forKey: .readAllFiles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(retries, forKey: .retries)

            try? container.encodeIfPresent(interval, forKey: .interval)

            try? container.encodeIfPresent(localDir, forKey: .localDir)

            try? container.encodeIfPresent(workingDir, forKey: .workingDir)

            try? container.encodeIfPresent(unzip, forKey: .unzip)

            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)

            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)

            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)

            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)

            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
        }
    }
}
