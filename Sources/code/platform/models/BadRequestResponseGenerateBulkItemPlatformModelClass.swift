

import Foundation
public extension PlatformClient {
    /*
         Model: BadRequestResponseGenerateBulkItem
         Used By: OrderInvoiceEngine
     */

    class BadRequestResponseGenerateBulkItem: Codable {
        public var keyword: String?

        public var dataPath: String?

        public var schemaPath: String?

        public var parameters: BadRequestResponseGenerateBulkItemParameters?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case keyword

            case dataPath = "data_path"

            case schemaPath = "schema_path"

            case parameters

            case message
        }

        public init(dataPath: String? = nil, keyword: String? = nil, message: String? = nil, parameters: BadRequestResponseGenerateBulkItemParameters? = nil, schemaPath: String? = nil) {
            self.keyword = keyword

            self.dataPath = dataPath

            self.schemaPath = schemaPath

            self.parameters = parameters

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                keyword = try container.decode(String.self, forKey: .keyword)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dataPath = try container.decode(String.self, forKey: .dataPath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schemaPath = try container.decode(String.self, forKey: .schemaPath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parameters = try container.decode(BadRequestResponseGenerateBulkItemParameters.self, forKey: .parameters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(keyword, forKey: .keyword)

            try? container.encodeIfPresent(dataPath, forKey: .dataPath)

            try? container.encodeIfPresent(schemaPath, forKey: .schemaPath)

            try? container.encodeIfPresent(parameters, forKey: .parameters)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
