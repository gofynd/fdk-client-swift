

import Foundation
public extension PlatformClient {
    /*
         Model: StoreConfig
         Used By: Inventory
     */

    class StoreConfig: Codable {
        public var jobCode: String?

        public var storeid: String?

        public var storeAlias: String?

        public var storeFileRegex: String?

        public var storeFileName: String?

        public var processConfig: ProcessConfig?

        public var properties: [String: String]?

        public enum CodingKeys: String, CodingKey {
            case jobCode = "job_code"

            case storeid

            case storeAlias = "store_alias"

            case storeFileRegex = "store_file_regex"

            case storeFileName = "store_file_name"

            case processConfig = "process_config"

            case properties
        }

        public init(jobCode: String? = nil, processConfig: ProcessConfig? = nil, properties: [String: String]? = nil, storeid: String? = nil, storeAlias: String? = nil, storeFileName: String? = nil, storeFileRegex: String? = nil) {
            self.jobCode = jobCode

            self.storeid = storeid

            self.storeAlias = storeAlias

            self.storeFileRegex = storeFileRegex

            self.storeFileName = storeFileName

            self.processConfig = processConfig

            self.properties = properties
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                jobCode = try container.decode(String.self, forKey: .jobCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeid = try container.decode(String.self, forKey: .storeid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAlias = try container.decode(String.self, forKey: .storeAlias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeFileRegex = try container.decode(String.self, forKey: .storeFileRegex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeFileName = try container.decode(String.self, forKey: .storeFileName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processConfig = try container.decode(ProcessConfig.self, forKey: .processConfig)

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

            try? container.encodeIfPresent(jobCode, forKey: .jobCode)

            try? container.encodeIfPresent(storeid, forKey: .storeid)

            try? container.encodeIfPresent(storeAlias, forKey: .storeAlias)

            try? container.encodeIfPresent(storeFileRegex, forKey: .storeFileRegex)

            try? container.encodeIfPresent(storeFileName, forKey: .storeFileName)

            try? container.encodeIfPresent(processConfig, forKey: .processConfig)

            try? container.encodeIfPresent(properties, forKey: .properties)
        }
    }
}
