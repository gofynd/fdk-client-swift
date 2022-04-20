

import Foundation
public extension PlatformClient {
    /*
         Model: ProcessConfig
         Used By: Inventory
     */

    class ProcessConfig: Codable {
        public var dbConfig: DBConfig?

        public var dbParamConfig: DBParamConfig?

        public var sftpConfig: SFTPConfig?

        public var awsS3Config: AWSS3config?

        public var mongoDocConfig: MongoDocConfig?

        public var ftpConfig: FTPConfig?

        public var emailConfig: EmailConfig?

        public var fileConfig: FileConfig?

        public var jsonDocConfig: JsonDocConfig?

        public var docMappingConfig: DocMappingConfig?

        public var taskStepConfig: TaskStepConfig?

        public var httpConfig: HttpConfig?

        public var localFileConfig: LocalFileConfig?

        public var oauthConfig: OAuthConfig?

        public var googleSpreadsheetConfig: GoogleSpreadSheetConfig?

        public enum CodingKeys: String, CodingKey {
            case dbConfig = "db_config"

            case dbParamConfig = "db_param_config"

            case sftpConfig = "sftp_config"

            case awsS3Config = "aws_s3_config"

            case mongoDocConfig = "mongo_doc_config"

            case ftpConfig = "ftp_config"

            case emailConfig = "email_config"

            case fileConfig = "file_config"

            case jsonDocConfig = "json_doc_config"

            case docMappingConfig = "doc_mapping_config"

            case taskStepConfig = "task_step_config"

            case httpConfig = "http_config"

            case localFileConfig = "local_file_config"

            case oauthConfig = "oauth_config"

            case googleSpreadsheetConfig = "google_spreadsheet_config"
        }

        public init(awsS3Config: AWSS3config? = nil, dbConfig: DBConfig? = nil, dbParamConfig: DBParamConfig? = nil, docMappingConfig: DocMappingConfig? = nil, emailConfig: EmailConfig? = nil, fileConfig: FileConfig? = nil, ftpConfig: FTPConfig? = nil, googleSpreadsheetConfig: GoogleSpreadSheetConfig? = nil, httpConfig: HttpConfig? = nil, jsonDocConfig: JsonDocConfig? = nil, localFileConfig: LocalFileConfig? = nil, mongoDocConfig: MongoDocConfig? = nil, oauthConfig: OAuthConfig? = nil, sftpConfig: SFTPConfig? = nil, taskStepConfig: TaskStepConfig? = nil) {
            self.dbConfig = dbConfig

            self.dbParamConfig = dbParamConfig

            self.sftpConfig = sftpConfig

            self.awsS3Config = awsS3Config

            self.mongoDocConfig = mongoDocConfig

            self.ftpConfig = ftpConfig

            self.emailConfig = emailConfig

            self.fileConfig = fileConfig

            self.jsonDocConfig = jsonDocConfig

            self.docMappingConfig = docMappingConfig

            self.taskStepConfig = taskStepConfig

            self.httpConfig = httpConfig

            self.localFileConfig = localFileConfig

            self.oauthConfig = oauthConfig

            self.googleSpreadsheetConfig = googleSpreadsheetConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dbConfig = try container.decode(DBConfig.self, forKey: .dbConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dbParamConfig = try container.decode(DBParamConfig.self, forKey: .dbParamConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sftpConfig = try container.decode(SFTPConfig.self, forKey: .sftpConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awsS3Config = try container.decode(AWSS3config.self, forKey: .awsS3Config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mongoDocConfig = try container.decode(MongoDocConfig.self, forKey: .mongoDocConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ftpConfig = try container.decode(FTPConfig.self, forKey: .ftpConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emailConfig = try container.decode(EmailConfig.self, forKey: .emailConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileConfig = try container.decode(FileConfig.self, forKey: .fileConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jsonDocConfig = try container.decode(JsonDocConfig.self, forKey: .jsonDocConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                docMappingConfig = try container.decode(DocMappingConfig.self, forKey: .docMappingConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taskStepConfig = try container.decode(TaskStepConfig.self, forKey: .taskStepConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                httpConfig = try container.decode(HttpConfig.self, forKey: .httpConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localFileConfig = try container.decode(LocalFileConfig.self, forKey: .localFileConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                oauthConfig = try container.decode(OAuthConfig.self, forKey: .oauthConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googleSpreadsheetConfig = try container.decode(GoogleSpreadSheetConfig.self, forKey: .googleSpreadsheetConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dbConfig, forKey: .dbConfig)

            try? container.encodeIfPresent(dbParamConfig, forKey: .dbParamConfig)

            try? container.encodeIfPresent(sftpConfig, forKey: .sftpConfig)

            try? container.encodeIfPresent(awsS3Config, forKey: .awsS3Config)

            try? container.encodeIfPresent(mongoDocConfig, forKey: .mongoDocConfig)

            try? container.encodeIfPresent(ftpConfig, forKey: .ftpConfig)

            try? container.encodeIfPresent(emailConfig, forKey: .emailConfig)

            try? container.encodeIfPresent(fileConfig, forKey: .fileConfig)

            try? container.encodeIfPresent(jsonDocConfig, forKey: .jsonDocConfig)

            try? container.encodeIfPresent(docMappingConfig, forKey: .docMappingConfig)

            try? container.encodeIfPresent(taskStepConfig, forKey: .taskStepConfig)

            try? container.encodeIfPresent(httpConfig, forKey: .httpConfig)

            try? container.encodeIfPresent(localFileConfig, forKey: .localFileConfig)

            try? container.encodeIfPresent(oauthConfig, forKey: .oauthConfig)

            try? container.encodeIfPresent(googleSpreadsheetConfig, forKey: .googleSpreadsheetConfig)
        }
    }
}
