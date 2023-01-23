

import Foundation
public extension PlatformClient {
    /*
         Model: FileConfig
         Used By: Inventory
     */

    class FileConfig: Codable {
        public var delimiter: String?

        public var charset: String?

        public var properties: [String: Any]?

        public var fileHasHeader: Bool?

        public var headerIndex: Int?

        public var headerArray: [String]?

        public var dataStartIndex: Int?

        public var propBeanConfigs: [PropBeanConfig]?

        public var junkDataThresholdCount: Int?

        public var fileType: String?

        public var lineValidityCheck: Bool?

        public var sheetNames: [String]?

        public var readAllSheets: Bool?

        public var quoteChar: String?

        public var escapeChar: String?

        public var defaultHeaders: DefaultHeadersDTO?

        public enum CodingKeys: String, CodingKey {
            case delimiter

            case charset

            case properties

            case fileHasHeader = "file_has_header"

            case headerIndex = "header_index"

            case headerArray = "header_array"

            case dataStartIndex = "data_start_index"

            case propBeanConfigs = "prop_bean_configs"

            case junkDataThresholdCount = "junk_data_threshold_count"

            case fileType = "file_type"

            case lineValidityCheck = "line_validity_check"

            case sheetNames = "sheet_names"

            case readAllSheets = "read_all_sheets"

            case quoteChar = "quote_char"

            case escapeChar = "escape_char"

            case defaultHeaders = "default_headers"
        }

        public init(charset: String? = nil, dataStartIndex: Int? = nil, defaultHeaders: DefaultHeadersDTO? = nil, delimiter: String? = nil, escapeChar: String? = nil, fileHasHeader: Bool? = nil, fileType: String? = nil, headerArray: [String]? = nil, headerIndex: Int? = nil, junkDataThresholdCount: Int? = nil, lineValidityCheck: Bool? = nil, properties: [String: Any]? = nil, propBeanConfigs: [PropBeanConfig]? = nil, quoteChar: String? = nil, readAllSheets: Bool? = nil, sheetNames: [String]? = nil) {
            self.delimiter = delimiter

            self.charset = charset

            self.properties = properties

            self.fileHasHeader = fileHasHeader

            self.headerIndex = headerIndex

            self.headerArray = headerArray

            self.dataStartIndex = dataStartIndex

            self.propBeanConfigs = propBeanConfigs

            self.junkDataThresholdCount = junkDataThresholdCount

            self.fileType = fileType

            self.lineValidityCheck = lineValidityCheck

            self.sheetNames = sheetNames

            self.readAllSheets = readAllSheets

            self.quoteChar = quoteChar

            self.escapeChar = escapeChar

            self.defaultHeaders = defaultHeaders
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delimiter = try container.decode(String.self, forKey: .delimiter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charset = try container.decode(String.self, forKey: .charset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                properties = try container.decode([String: Any].self, forKey: .properties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileHasHeader = try container.decode(Bool.self, forKey: .fileHasHeader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerIndex = try container.decode(Int.self, forKey: .headerIndex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerArray = try container.decode([String].self, forKey: .headerArray)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dataStartIndex = try container.decode(Int.self, forKey: .dataStartIndex)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                propBeanConfigs = try container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                junkDataThresholdCount = try container.decode(Int.self, forKey: .junkDataThresholdCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileType = try container.decode(String.self, forKey: .fileType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineValidityCheck = try container.decode(Bool.self, forKey: .lineValidityCheck)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sheetNames = try container.decode([String].self, forKey: .sheetNames)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                readAllSheets = try container.decode(Bool.self, forKey: .readAllSheets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quoteChar = try container.decode(String.self, forKey: .quoteChar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                escapeChar = try container.decode(String.self, forKey: .escapeChar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultHeaders = try container.decode(DefaultHeadersDTO.self, forKey: .defaultHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(delimiter, forKey: .delimiter)

            try? container.encodeIfPresent(charset, forKey: .charset)

            try? container.encodeIfPresent(properties, forKey: .properties)

            try? container.encodeIfPresent(fileHasHeader, forKey: .fileHasHeader)

            try? container.encodeIfPresent(headerIndex, forKey: .headerIndex)

            try? container.encodeIfPresent(headerArray, forKey: .headerArray)

            try? container.encodeIfPresent(dataStartIndex, forKey: .dataStartIndex)

            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)

            try? container.encodeIfPresent(junkDataThresholdCount, forKey: .junkDataThresholdCount)

            try? container.encodeIfPresent(fileType, forKey: .fileType)

            try? container.encodeIfPresent(lineValidityCheck, forKey: .lineValidityCheck)

            try? container.encodeIfPresent(sheetNames, forKey: .sheetNames)

            try? container.encodeIfPresent(readAllSheets, forKey: .readAllSheets)

            try? container.encodeIfPresent(quoteChar, forKey: .quoteChar)

            try? container.encodeIfPresent(escapeChar, forKey: .escapeChar)

            try? container.encodeIfPresent(defaultHeaders, forKey: .defaultHeaders)
        }
    }
}
