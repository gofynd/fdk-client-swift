

import Foundation
public extension PlatformClient {
    /*
         Model: SFTPConfig
         Used By: Inventory
     */

    class SFTPConfig: Codable {
        public var host: String?

        public var port: Int?

        public var username: String?

        public var password: String?

        public var unzip: Bool?

        public var retries: Int?

        public var interval: Int?

        public var privateKeyPath: String?

        public var strictHostKeyChecking: Bool?

        public var localDir: String?

        public var remoteDir: String?

        public var passwordProtected: Bool?

        public var zipFileRegex: String?

        public var fileRegex: String?

        public var zipFormat: String?

        public var archiveConfig: ArchiveConfig?

        public var readAllFiles: Bool?

        public enum CodingKeys: String, CodingKey {
            case host

            case port

            case username

            case password

            case unzip

            case retries

            case interval

            case privateKeyPath = "private_key_path"

            case strictHostKeyChecking = "strict_host_key_checking"

            case localDir = "local_dir"

            case remoteDir = "remote_dir"

            case passwordProtected = "password_protected"

            case zipFileRegex = "zip_file_regex"

            case fileRegex = "file_regex"

            case zipFormat = "zip_format"

            case archiveConfig = "archive_config"

            case readAllFiles = "read_all_files"
        }

        public init(archiveConfig: ArchiveConfig? = nil, fileRegex: String? = nil, host: String? = nil, interval: Int? = nil, localDir: String? = nil, password: String? = nil, passwordProtected: Bool? = nil, port: Int? = nil, privateKeyPath: String? = nil, readAllFiles: Bool? = nil, remoteDir: String? = nil, retries: Int? = nil, strictHostKeyChecking: Bool? = nil, unzip: Bool? = nil, username: String? = nil, zipFileRegex: String? = nil, zipFormat: String? = nil) {
            self.host = host

            self.port = port

            self.username = username

            self.password = password

            self.unzip = unzip

            self.retries = retries

            self.interval = interval

            self.privateKeyPath = privateKeyPath

            self.strictHostKeyChecking = strictHostKeyChecking

            self.localDir = localDir

            self.remoteDir = remoteDir

            self.passwordProtected = passwordProtected

            self.zipFileRegex = zipFileRegex

            self.fileRegex = fileRegex

            self.zipFormat = zipFormat

            self.archiveConfig = archiveConfig

            self.readAllFiles = readAllFiles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                host = try container.decode(String.self, forKey: .host)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                port = try container.decode(Int.self, forKey: .port)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

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
                privateKeyPath = try container.decode(String.self, forKey: .privateKeyPath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strictHostKeyChecking = try container.decode(Bool.self, forKey: .strictHostKeyChecking)

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
                remoteDir = try container.decode(String.self, forKey: .remoteDir)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                passwordProtected = try container.decode(Bool.self, forKey: .passwordProtected)

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

            try? container.encodeIfPresent(host, forKey: .host)

            try? container.encodeIfPresent(port, forKey: .port)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(unzip, forKey: .unzip)

            try? container.encodeIfPresent(retries, forKey: .retries)

            try? container.encodeIfPresent(interval, forKey: .interval)

            try? container.encodeIfPresent(privateKeyPath, forKey: .privateKeyPath)

            try? container.encodeIfPresent(strictHostKeyChecking, forKey: .strictHostKeyChecking)

            try? container.encodeIfPresent(localDir, forKey: .localDir)

            try? container.encodeIfPresent(remoteDir, forKey: .remoteDir)

            try? container.encodeIfPresent(passwordProtected, forKey: .passwordProtected)

            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)

            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)

            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)

            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)

            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
        }
    }
}
