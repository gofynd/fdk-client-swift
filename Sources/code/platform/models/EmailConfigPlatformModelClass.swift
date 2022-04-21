

import Foundation
public extension PlatformClient {
    /*
         Model: EmailConfig
         Used By: Inventory
     */

    class EmailConfig: Codable {
        public var recepient: String?

        public var host: String?

        public var username: String?

        public var password: String?

        public var unzip: Bool?

        public var readFromContent: Bool?

        public var filterBasedOnRecepients: Bool?

        public var pcol: String?

        public var subjectLineRegex: String?

        public var senderAddress: String?

        public var localDir: String?

        public var folderNameHierarchies: [String]?

        public var attachmentRegex: String?

        public var bodyContentRegex: String?

        public var passwordProtected: Bool?

        public var zipFormat: String?

        public var attachmentMandate: Bool?

        public var filterFilesAfterExtraction: Bool?

        public var archiveConfig: ArchiveConfig?

        public var readAllUnreadMails: Bool?

        public var contentType: String?

        public var downloadableLink: Bool?

        public var properties: [String: String]?

        public enum CodingKeys: String, CodingKey {
            case recepient

            case host

            case username

            case password

            case unzip

            case readFromContent = "read_from_content"

            case filterBasedOnRecepients = "filter_based_on_recepients"

            case pcol

            case subjectLineRegex = "subject_line_regex"

            case senderAddress = "sender_address"

            case localDir = "local_dir"

            case folderNameHierarchies = "folder_name_hierarchies"

            case attachmentRegex = "attachment_regex"

            case bodyContentRegex = "body_content_regex"

            case passwordProtected = "password_protected"

            case zipFormat = "zip_format"

            case attachmentMandate = "attachment_mandate"

            case filterFilesAfterExtraction = "filter_files_after_extraction"

            case archiveConfig = "archive_config"

            case readAllUnreadMails = "read_all_unread_mails"

            case contentType = "content_type"

            case downloadableLink = "downloadable_link"

            case properties
        }

        public init(archiveConfig: ArchiveConfig? = nil, attachmentMandate: Bool? = nil, attachmentRegex: String? = nil, bodyContentRegex: String? = nil, contentType: String? = nil, downloadableLink: Bool? = nil, filterBasedOnRecepients: Bool? = nil, filterFilesAfterExtraction: Bool? = nil, folderNameHierarchies: [String]? = nil, host: String? = nil, localDir: String? = nil, password: String? = nil, passwordProtected: Bool? = nil, pcol: String? = nil, properties: [String: String]? = nil, readAllUnreadMails: Bool? = nil, readFromContent: Bool? = nil, recepient: String? = nil, senderAddress: String? = nil, subjectLineRegex: String? = nil, unzip: Bool? = nil, username: String? = nil, zipFormat: String? = nil) {
            self.recepient = recepient

            self.host = host

            self.username = username

            self.password = password

            self.unzip = unzip

            self.readFromContent = readFromContent

            self.filterBasedOnRecepients = filterBasedOnRecepients

            self.pcol = pcol

            self.subjectLineRegex = subjectLineRegex

            self.senderAddress = senderAddress

            self.localDir = localDir

            self.folderNameHierarchies = folderNameHierarchies

            self.attachmentRegex = attachmentRegex

            self.bodyContentRegex = bodyContentRegex

            self.passwordProtected = passwordProtected

            self.zipFormat = zipFormat

            self.attachmentMandate = attachmentMandate

            self.filterFilesAfterExtraction = filterFilesAfterExtraction

            self.archiveConfig = archiveConfig

            self.readAllUnreadMails = readAllUnreadMails

            self.contentType = contentType

            self.downloadableLink = downloadableLink

            self.properties = properties
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                recepient = try container.decode(String.self, forKey: .recepient)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                host = try container.decode(String.self, forKey: .host)

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
                readFromContent = try container.decode(Bool.self, forKey: .readFromContent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filterBasedOnRecepients = try container.decode(Bool.self, forKey: .filterBasedOnRecepients)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pcol = try container.decode(String.self, forKey: .pcol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subjectLineRegex = try container.decode(String.self, forKey: .subjectLineRegex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                senderAddress = try container.decode(String.self, forKey: .senderAddress)

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
                folderNameHierarchies = try container.decode([String].self, forKey: .folderNameHierarchies)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attachmentRegex = try container.decode(String.self, forKey: .attachmentRegex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bodyContentRegex = try container.decode(String.self, forKey: .bodyContentRegex)

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
                zipFormat = try container.decode(String.self, forKey: .zipFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attachmentMandate = try container.decode(Bool.self, forKey: .attachmentMandate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filterFilesAfterExtraction = try container.decode(Bool.self, forKey: .filterFilesAfterExtraction)

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
                readAllUnreadMails = try container.decode(Bool.self, forKey: .readAllUnreadMails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contentType = try container.decode(String.self, forKey: .contentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                downloadableLink = try container.decode(Bool.self, forKey: .downloadableLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                properties = try container.decode([String: String].self, forKey: .properties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(recepient, forKey: .recepient)

            try? container.encodeIfPresent(host, forKey: .host)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(unzip, forKey: .unzip)

            try? container.encodeIfPresent(readFromContent, forKey: .readFromContent)

            try? container.encodeIfPresent(filterBasedOnRecepients, forKey: .filterBasedOnRecepients)

            try? container.encodeIfPresent(pcol, forKey: .pcol)

            try? container.encodeIfPresent(subjectLineRegex, forKey: .subjectLineRegex)

            try? container.encodeIfPresent(senderAddress, forKey: .senderAddress)

            try? container.encodeIfPresent(localDir, forKey: .localDir)

            try? container.encodeIfPresent(folderNameHierarchies, forKey: .folderNameHierarchies)

            try? container.encodeIfPresent(attachmentRegex, forKey: .attachmentRegex)

            try? container.encodeIfPresent(bodyContentRegex, forKey: .bodyContentRegex)

            try? container.encodeIfPresent(passwordProtected, forKey: .passwordProtected)

            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)

            try? container.encodeIfPresent(attachmentMandate, forKey: .attachmentMandate)

            try? container.encodeIfPresent(filterFilesAfterExtraction, forKey: .filterFilesAfterExtraction)

            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)

            try? container.encodeIfPresent(readAllUnreadMails, forKey: .readAllUnreadMails)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(downloadableLink, forKey: .downloadableLink)

            try? container.encodeIfPresent(properties, forKey: .properties)
        }
    }
}
